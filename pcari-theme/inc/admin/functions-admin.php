<?php

function pcari_add_admin_page() {
    
    //Generate PCARI Admin Page
    add_menu_page( 'PCARI Theme Options', 'PCARI', 'manage_options', 'custom_pcari', 'pcari_theme_create_page', 'dashicons-star-filled', 110);
    
    //Generate PCARI Admin Sub Pages
    add_submenu_page( 'custom_pcari', 'PCARI Theme Options', 'Settings', 'manage_options', 'custom_pcari', 'pcari_theme_create_page' );
    add_submenu_page( 'custom_pcari', 'PCARI CSS Options', 'Custom CSS', 'manage_options', 'custom_pcari_custom_css', 'pcari_theme_css_page' );
}
add_action( 'admin_menu', 'pcari_add_admin_page' );

function pcari_theme_create_page() {
    require_once( 'admin-template-main.php' );
}

function pcari_theme_css_page() {
    
}