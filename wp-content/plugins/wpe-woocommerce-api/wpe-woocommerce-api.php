<?php
   /*
   Plugin Name: WPE WooCommerce API Plugin
   Plugin URI: wpengine.com
   description: Adds a wp-json API endpoint to clear sessions
   Version: 1.0
   Author: WPE Performance Team
   License: GPL2
   */

    function nuke_woocommerce_sessions_table() {
        global $wpdb;
        $wpdb->query( "TRUNCATE {$wpdb->prefix}woocommerce_sessions" );
        $wpdb->query( "DELETE FROM {$wpdb->usermeta} WHERE meta_key='_woocommerce_persistent_cart_" . get_current_blog_id() . "';" );
        wp_cache_flush();
    }

    add_action( 'rest_api_init', function () {
        register_rest_route( 'wpe-woocommerce-api/v1', '/nuke_sessions', array(
            'methods' => 'POST',
            'callback' => 'nuke_woocommerce_sessions_table',
        ) );
    } );

    function nuke_woocommerce_orders_table() {
        global $wpdb;
        $wpdb->query( "TRUNCATE {$wpdb->prefix}wp_woocommerce_order_itemmeta;" );
        $wpdb->query( "TRUNCATE {$wpdb->prefix}wp_woocommerce_order_items;" );
        $wpdb->query( "DELETE FROM {$wpdb->prefix}wp_postmeta WHERE post_id IN ( SELECT ID FROM wp_posts WHERE post_type = 'shop_order' );" );
        $wpdb->query( "DELETE FROM {$wpdb->prefix}wp_posts WHERE post_type = 'shop_order';" );
        wp_cache_flush();
    }

    add_action( 'rest_api_init', function () {
        register_rest_route( 'wpe-woocommerce-api/v1', '/nuke_orders', array(
            'methods' => 'POST',
            'callback' => 'nuke_woocommerce_orders_table',
        ) );
    } );

    # Allows posts for orders to allow order creation via woocommerce REST API
    function rest_check_permissions_alter_order( $permission, $context, $object_id, $post_type ) {
        if ( 'shop_order' === $post_type && 'create' === $context ) {
            return true;
        }

        return $permission;
    }

    add_filter( 'woocommerce_rest_check_permissions', 'rest_check_permissions_alter_order', 90, 4 );

?>
