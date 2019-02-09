<?php
/**
 * PCARI Theme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package PCARI_Theme
 */

if ( ! function_exists( 'pcari_theme_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function pcari_theme_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on PCARI Theme, use a find and replace
		 * to change 'pcari-theme' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'pcari-theme', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
        register_nav_menu( 'primary-menu', 'Primary Menu' );
        register_nav_menu( 'secondary-menu', 'Secondary Menu (optional)' );
        register_nav_menu( 'footer-menu', 'Footer Menu (optional)' );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'pcari_theme_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
        
		/**
		 * Add support for post formats.
		 *
		 * @link https://codex.wordpress.org/Post_Formats
		 */
        add_theme_support( 'post-formats', array( 
            'aside',
        ) );
	}
endif;
add_action( 'after_setup_theme', 'pcari_theme_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function pcari_theme_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'pcari_theme_content_width', 640 );
}
add_action( 'after_setup_theme', 'pcari_theme_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function pcari_theme_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'pcari-theme' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'pcari-theme' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'pcari_theme_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function pcari_theme_scripts() {
    
    // Styles
	wp_enqueue_style( 'pcari-theme', get_template_directory_uri() . '/css/pcari-styles.css' );
	wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i' );
	wp_enqueue_style( 'bootstrap-3.3.7', 'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css' );
    wp_enqueue_style( 'fontawesome-5.6.3', 'https://use.fontawesome.com/releases/v5.6.3/css/all.css' );
    wp_enqueue_style( 'slick-1.8.1', 'https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css' );

    // Scripts
	wp_enqueue_script( 'pcari-theme-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );
	wp_enqueue_script( 'pcari-theme-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );
    
    wp_enqueue_script( 'bootstrap-3.3.7', 'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js', array(), '20151215', true );
    wp_enqueue_script( 'slick-1.8.1', 'https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js', array(), '20151215', true );
    wp_enqueue_script( 'pcari-theme', get_template_directory_uri() . '/js/pcari-scripts.js', array(), '20151215', true );

    // For Comments
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'pcari_theme_scripts' );

/**
 * Enqueue Admin scripts and styles.
 */
function pcari_admin_theme_scripts() {
    
    // Styles
	wp_enqueue_style( 'uikit', 'https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.5/css/uikit.almost-flat.min.css' );
    
    // Scripts
	wp_enqueue_script( 'uikit', 'https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.5/js/uikit.min.js' );
}
add_action( 'admin_enqueue_scripts', 'pcari_admin_theme_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Custom template shortcodes for this theme
 */
require get_template_directory() . '/inc/template-shortcodes.php';

/**
 * Sets the text editor mode as default for this theme
 */
add_filter('wp_default_editor', create_function('', 'return "html";'));

/**
 * Disables FTP Connection with credentials for installing plugins
 */
define('FS_METHOD', 'direct');


/**
 * Disables editor on plugins
 */
define( 'DISALLOW_FILE_EDIT', true );

/**
 * Admin functions for this theme
 */
//require get_template_directory() . '/inc/admin/functions-admin.php';


/**
 * Require Members Module for this theme
 */
require get_template_directory() . '/module/members/members_function.php';

/**
 * Removes some sub-menu pages on the backend
 */
function remove_menus() {
	remove_menu_page( 'jetpack' );                    //Jetpack*
	remove_menu_page( 'edit-comments.php' );          //Comments
	//remove_menu_page( 'themes.php' );                 //Appearance
	remove_menu_page( 'tools.php' );                  //Tools
}
add_action( 'admin_menu', 'remove_menus' );
