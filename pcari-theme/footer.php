<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package PCARI_Theme
 */

?>

	</div><!-- #content -->
	
    <footer id="main-footer" class="footer">
        <div class="footer-wrap">
            <?php if( is_page( 'Contact' ) || is_page( 'Contact Us' ) ): ?>
            <div class="footer-git">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="git-title git-main-title">Get In Touch</div>
                            <div class="git-form">
                                <?= do_shortcode('[contact-form-7 id="37" title="Get In Touch (Footer)" html_class="use-floating-validation-tip"]'); ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="git-map">
                                <div class="git-title git-map-title">Locate Us</div>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4590.493913262489!2d121.06499425093777!3d14.648568095650937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b7703f134a3b%3A0x56d091f1e6d8bce3!2sUP+Diliman+Institute+of+Civil+Engineering+(UP-ICE)!5e0!3m2!1sen!2sph!4v1547868024532" width="1600" height="400" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php endif; ?>
            <div class="container">
                <div class="footer-main">
                    <div class="footer-copyright">
                        <strong>Copyright 2019 by Phil-ECAR-I</strong>
                        <p>Rm 317, Institute of Civil Engineering, Pardo de Tavera St. University of the Philippines Diliman, 1101, Quezon City</p>
                        <p>981-8500 loc 3189</p>
                    </div>
                    <div class="footer-logos">
                        <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/website-logo-b.jpg" alt="Website Logo">
                        <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/ice-logo-a.png" alt="Ice Logo">
                        <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/college-of-engineering-logo-a.png" alt="College of Engineering Logo">
                        <img src="<?= do_shortcode('[stylesheet_directory]'); ?>/images/up-logo-a.png" alt="UP Diliman Logo">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
</div><!-- #main-app -->

<?php wp_footer(); ?>

</body>
</html>
