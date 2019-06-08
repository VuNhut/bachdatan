<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class("page-contact"); ?>>
    <div class="container">
        <div class="row">
            <div class="info-contact col-lg-5 col-md-6 wow bounceInLeft">
                <?php the_content(); ?>
            </div>
            <div class="form-contact col-lg-7 col-md-6 wow bounceInRight">
                <h3>Gửi nội dung liên hệ</h3>
                <?php echo do_shortcode('[contact-form-7 id="1595" title="Contact form 1"]'); ?>
            </div>
        </div>
    </div>
</article><!-- #post-## -->