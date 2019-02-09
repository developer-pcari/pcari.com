<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package PCARI_Theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="main-app" class="site">
   
    <header id="main-header" class="header">
        <div class="header-wrap">
            <div class="container">
                <div class="header-top">
                    <div class="header-logo">
                        <a href="<?= do_shortcode('[blogurl]'); ?>">
                            <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/website-logo-a.png" alt="Website Logo">
                        </a>
                    </div>
                    <div class="header-info">
                        <strong>Philippine <br>ElectroChemical <br>Arsenic Remediation</strong>
                        Implementation of a novel technology to affordably and effectively remove arsenic from contaminated Philippine groundwaters
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <div class="header-bottom-inner">
                        <nav class="header-navigation">
                            <?php wp_nav_menu( array( 'container' => '', 'sort_column' => 'menu_order', 'menu_id' => 'main-nav', 'menu_class' => 'site-menu', 'theme_location' => 'primary-menu' ) ); ?>
                        </nav>
                        <div class="header-search">
                            <form action="<?= do_shortcode('[blogurl]'); ?>/">
                                <div class="search-field">
                                    <input type="search" name="s" id="s" aria-label="Search" placeholder="Search" class="search-input">
                                    <div class="search-field submit">
                                        <button type="submit" class="search-submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

	<div id="content" class="site-content">
