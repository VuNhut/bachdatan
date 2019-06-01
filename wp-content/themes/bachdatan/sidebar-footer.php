<?php
/**
 * The Sidebar widget area for footer.
 *
 * @package dazzling
 */
?>

	<?php
	// If footer sidebars do not have widget let's bail.

	if ( ! is_active_sidebar( 'footer-widget-1' ) && ! is_active_sidebar( 'footer-widget-2' ) && ! is_active_sidebar( 'footer-widget-3' ) )
		return;
	// If we made it this far we must have widgets.
	?>
	<div class="row footer-widget-area wow bounceInLeft" data-wow-duration="2s">
		<?php if ( is_active_sidebar( 'footer-widget-1' ) ) : ?>
		<div class="col-lg-2 col-md-4 col-sm-4 footer-widget" role="complementary">
			<?php dynamic_sidebar( 'footer-widget-1' ); ?>
		</div><!-- .widget-area .first -->
		<?php endif; ?>

		<?php if ( is_active_sidebar( 'footer-widget-2' ) ) : ?>
		<div class="col-lg-2 col-md-8 col-sm-8 footer-widget" role="complementary">
			<?php dynamic_sidebar( 'footer-widget-2' ); ?>
		</div><!-- .widget-area .second -->
		<?php endif; ?>

		<?php if ( is_active_sidebar( 'footer-widget-3' ) ) : ?>
		<div class="col-lg-6 col-md-4 col-sm-4 footer-widget" role="complementary">
			<?php dynamic_sidebar( 'footer-widget-3' ); ?>
		</div><!-- .widget-area .third -->
		<?php endif; ?>

		<?php if ( is_active_sidebar( 'footer-widget-4' ) ) : ?>
		<div class="col-lg-2 col-md-8 col-sm-8 footer-widget" role="complementary">
			<?php dynamic_sidebar( 'footer-widget-4' ); ?>
		</div><!-- .widget-area .third -->
		<?php endif; ?>
	</div>