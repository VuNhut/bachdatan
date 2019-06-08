<?php
/**
 * The Template for displaying all single posts.
 *
 * @package dazzling
 */

get_header(); ?>
<div id="content" class="site-content">
	<div id="primary" class="content-area<?php echo of_get_option( 'site_layout', 'no entry' ); ?>">
		<main id="main" class="site-main">

		<?php while ( have_posts() ) : the_post(); ?>

			<?php if (in_category(462)) : ?>
				<?php get_template_part( 'content', 'single-project' ); ?>
			<?php elseif (in_category(463)) : ?>
				<?php get_template_part( 'content', 'single-partner' ); ?>
			<?php else : ?>
				<?php get_template_part( 'content', 'single' ); ?>
			<?php endif; ?>
			<?php
				// If comments are open or we have at least one comment, load up the comment template
				if ( comments_open() || '0' != get_comments_number() ) :
					comments_template();
				endif;
			?>

		<?php endwhile; // end of the loop. ?>

		</main><!-- #main -->
	</div><!-- #primary -->
<?php get_footer(); ?>