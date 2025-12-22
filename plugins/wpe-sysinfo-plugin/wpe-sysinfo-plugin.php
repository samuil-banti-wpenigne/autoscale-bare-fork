<?php
   /*
   Plugin Name: WPE System Information Plugin
   Plugin URI: wpengine.com
   description: A plugin to add an endpoint to the WPE installs it is installed on that returns system information.
   Version: 1.2
   Author: WPE Performance Team
   License: GPL2
   */

   function wpe_sysinfo_plugin_hostname( $data ) {
        return gethostname();
    }

    function wpe_sysinfo_plugin_phpversion( $data ) {
        return phpversion();
    }

   function wpe_sysinfo_plugin_plugins( $data ) {
       if ( ! function_exists( 'get_plugins' ) ) {
            require_once ABSPATH . 'wp-admin/includes/plugin.php';
        }

        $plugins=get_plugins();

        // Only get active plugins and filter out extraneous fields
        $activated_plugins=array();
        $apl=get_option('active_plugins');
        foreach ($apl as $p){
            if(isset($plugins[$p])){
                array_push($activated_plugins, array('Name' => $plugins[$p]['Name'], 'Version' => $plugins[$p]['Version']));
            }
        }

        return ( $activated_plugins );
    }

   function wpe_sysinfo_plugin_themes( $data ) {
        $wp_themes = wp_get_themes();

        // Filter out extraneous fields
        $themes=array();
        foreach ($wp_themes as &$value){
            array_push($themes, array('Name' => $value['Name'], 'Version' => $value['Version']));
        }

       return ( $themes );
    }

    add_action( 'rest_api_init', function () {
        register_rest_route( 'wpe-sysinfo/v1', '/hostname', array(
            'methods' => 'GET',
            'callback' => 'wpe_sysinfo_plugin_hostname',
            'permission_callback' => '__return_true',
        ) );
        register_rest_route( 'wpe-sysinfo/v1', '/phpversion', array(
            'methods' => 'GET',
            'callback' => 'wpe_sysinfo_plugin_phpversion',
            'permission_callback' => '__return_true',
        ) );
        register_rest_route( 'wpe-sysinfo/v1', '/plugins', array(
            'methods' => 'GET',
            'callback' => 'wpe_sysinfo_plugin_plugins',
            'permission_callback' => '__return_true',
        ) );
        register_rest_route( 'wpe-sysinfo/v1', '/themes', array(
            'methods' => 'GET',
            'callback' => 'wpe_sysinfo_plugin_themes',
            'permission_callback' => '__return_true',
        ) );
    } );
?>
