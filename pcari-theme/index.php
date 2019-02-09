<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package PCARI_Theme
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main-container" class="main">
            <section id="hp-news" class="hp-news">
                <h2 class="hidden">Recent News</h2>
                
                <div class="container">
                    <div class="news-wrap">
                        <div class="news-slider-wrap">
                            <div class="news-slider">
                                <?php if( function_exists('cyclone_slider') ) cyclone_slider('hero-slideshow'); ?>
                                <!-- <div class="news-slide">
                                    <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/news-1.jpg" alt="News Featured Image" class="news-img">
                                    <div class="news-caption">The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley</div>
                                </div>
                                <div class="news-slide">
                                    <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/news-2.jpg" alt="News Featured Image" class="news-img">
                                    <div class="news-caption">The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley</div>
                                </div>
                                <div class="news-slide">
                                    <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/news-3.jpg" alt="News Featured Image" class="news-img">
                                    <div class="news-caption">The Phil-ECAR-I contingent of <br>researchers visits UC Berkeley</div>
                                </div> -->
                            </div>
                        </div>
                        <div class="news-recent">
                            <a href="#" class="news-recent-title">Recent News</a>
                            <div class="news-recent-list">
                                <?php 
                                    $args = array(
                                        'post_type' => 'post',
                                        'post_status' => 'publish',
                                        'category_name' => 'news',
                                        'posts_per_page' => 3,
                                    );
                                    $news_posts = new WP_Query( $args );

                                    if ( $news_posts->have_posts() ) :

                                        while ( $news_posts->have_posts() ) :
                                            $news_posts->the_post();
                                        ?>
                                            <article id="news-rencent-post-<?php the_ID(); ?>" class="news-recent-article">
                                                <a href="<?php the_permalink(); ?>" class="news-recent-name"><?php the_title(); ?></a>
                                                <div class="news-recent-date"><?= get_the_date( 'F j' ); ?></div>
                                            </article>
                                        <?php
                                            wp_reset_postdata();
                                        endwhile;
                                    endif;
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
		</main><!-- #main -->
	</div><!-- #primary -->
	
<?php
get_footer();
