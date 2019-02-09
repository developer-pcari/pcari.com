<?php
/**
 * Custom Shortcodes for this theme
 *
 * 
 *
 * @package PCARI_Theme
 */

/**
 * returns the site directory of this theme
 */
function pcari_theme_blogurl() {
	return get_home_url();
}

add_shortcode( 'blogurl', 'pcari_theme_blogurl' );

/**
 * returns the stylesheet directory of this theme
 */
function pcari_theme_stylesheet_directory() {
	return get_template_directory_uri();
}

add_shortcode( 'stylesheet_directory', 'pcari_theme_stylesheet_directory' );