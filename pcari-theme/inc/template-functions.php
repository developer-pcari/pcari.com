<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package PCARI_Theme
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function pcari_theme_body_classes( $classes ) {
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	// Adds a class of no-sidebar when there is no sidebar present.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	return $classes;
}
add_filter( 'body_class', 'pcari_theme_body_classes' );

/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function pcari_theme_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">', esc_url( get_bloginfo( 'pingback_url' ) ) );
	}
}
add_action( 'wp_head', 'pcari_theme_pingback_header' );

/**
 * Adds a specific class in the body for the inner pages
 */
function pcari_theme_inner_page_class($c) {
    if ( is_home() ) {
		$c[] = "home-container";
	}
	else {
		$c[] = "ip-container";
	}
    
	return $c;
}
add_filter( 'body_class', 'pcari_theme_inner_page_class' );

/**
 * Removes the autop function of Contact Form 7 for this theme
 */
add_filter( 'wpcf7_autop_or_not', '__return_false' );