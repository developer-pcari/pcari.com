<?php

// Create Custom Post Type For Members
function members_gui(){
    $args = array(
        'public' => true,
        'query_var' => true,
        'rewrite' => array(
            'slug' => 'members',
        ),
        'supports' => array(
            'thumbnail',
            'revisions',
            'title',
            'editor',
        ),
        'menu_position' => 50,
        'menu_icon' => 'dashicons-universal-access-alt',
        'singular_label' => 'member',
        'labels' => array(
            'name' => 'Members',
            'all_items' => 'All Members',
            'singular_name' => 'Member',
            'add_new' => 'Add New',
            'add_new_item' => 'Add New Member',
            'edit_item' => 'Edit Member Information',
            'new_item' => 'New Member',
            'view_item' => 'View Member',
            'search_items' => 'Find Members',
            'not_found' => 'No Member Found',
            'not_found_in_trash' => 'No Members Found in Trash'
        ),
        'register_meta_box_cb' => 'member_customMetaBox'
    );
    
    register_post_type( 'pcari_members', $args );
}
add_action( 'init', 'members_gui' );

// Create Custom Meta Boxes for Member's Page
function member_customMetaBox() {
    add_meta_box( 'member-extension', 'Member Information', 'member_guiAddForm', 'pcari_members', 'normal', 'high' );
}

// Custom Gui Form for Member's Page
function member_guiAddForm( $postArr ) {
    require_once( 'view/form_add_member.php' );
}

// Save Member Extension's Meta data
function member_extensionSaveMeta( $postID ) {
    if( isset( $_POST['member_extension_nonce'] ) ){

        $args = array(	
            'post_title' => strip_tags( $_POST['post_title'] ),
            'member_name' => strip_tags( $_POST['post_title'] ),
            'member_heading' => strip_tags( $_POST['member_heading'] ),
            'member_position' => strip_tags( $_POST['member_position'] ),
            'member_educational_field' => strip_tags( $_POST['member_educational_field'] ),
            'member_expertise' => strip_tags( $_POST['member_expertise'] ),
            'member_research_interest' => strip_tags( $_POST['member_research_interest'] ),
        );
        
        update_post_meta( $postID, 'member_name', strip_tags( $_POST['post_title'] ) );
        update_post_meta( $postID, 'member_heading', strip_tags( $_POST['member_heading'] ) );
        update_post_meta( $postID, 'member_position', strip_tags( $_POST['member_position'] ) );
        update_post_meta( $postID, 'member_educational_field', strip_tags( $_POST['member_educational_field'] ) );
        update_post_meta( $postID, 'member_expertise', strip_tags( $_POST['member_expertise'] ) );
        update_post_meta( $postID, 'member_research_interest', strip_tags( $_POST['member_research_interest'] ) );
        update_post_meta( $postID, 'member_information', addslashes( maybe_serialize( $args ) ) );
    }
}
add_action( 'save_post', 'member_extensionSaveMeta' );

// Rendering of members data
function member_renderData( $content ) {
    global $post;
    $renderContent = '';
    
    // render all Members on Members' Page
    if ( is_page( 'Members' ) ) {
        require_once( 'view/render_all_members.php' );
        return stripslashes( $content.$renderContent );	
    }
    
    if ( get_post_type() == 'pcari_members' ) {
        require_once( 'view/render_single_member.php' );
        if ( !is_search() ) {
            return stripslashes( $renderContent );
        }
    }
    
    return stripslashes( $content );
}
add_filter( 'the_content', 'member_renderData' );

// Sets the height of the members thumbnail
function member_customThumbnailSize(){
    if (function_exists( 'add_image_size' )) { 
        add_theme_support( 'post-thumbnails' );
        add_image_size( 'members-image', 200, 160, true ); 
    }
}
member_customThumbnailSize();

// Add post/page class to the body for to custom post type `pcari_members`
function member_filterPostClass( $classes ) {
    global $post;
    
    if ( get_post_type() == 'pcari_members' ) {
        $classes[] = 'post-pcari-single-members';
    }
    
    if ( is_page( 'Members' ) ) {
        $classes[] = 'page-pcari-all-members';
    }
    
    return $classes;
}
add_filter( 'post_class', 'member_filterPostClass' );
    
// Enqueue members' styles and scripts
function member_scripts() {
    if ( is_admin() ) {
        return false;
    }
    
    wp_enqueue_style( 'members', get_stylesheet_directory_uri () . '/module/members/view/css/members-style.css' );
}
add_action( 'wp_enqueue_scripts', 'member_scripts' );