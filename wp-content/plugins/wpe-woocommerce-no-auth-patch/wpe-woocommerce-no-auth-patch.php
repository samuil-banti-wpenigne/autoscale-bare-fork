<?php
   /*
   Plugin Name: WPE WooCommerce API no auth Plugin
   Plugin URI: wpengine.com
   description: Temporarily disables auth to allow for post and product creation
   Version: 1.0
   Author: WPE Performance Team
   License: GPL2
   */

    # disables rest api auth for wordpress
    add_filter( 'rest_authentication_errors', function(){
        wp_set_current_user( 1 );
    }, 101 );

    # disables api auth for woocommerce
    function api_check_authentication_alter(){
        return new WP_User( 1 );
    }

    add_filter( 'woocommerce_api_check_authentication', 'api_check_authentication_alter', 1 );

    # disables rest api auth for woocommerce
    function rest_check_permissions_alter_all( $permission, $context, $object_id, $post_type  ){
        return true;
    }

    add_filter( 'woocommerce_rest_check_permissions', 'rest_check_permissions_alter_all', 89, 4 );
?>
