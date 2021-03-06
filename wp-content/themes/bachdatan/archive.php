<?php
/**
 * The template for displaying Archive pages.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package dazzling
 */

get_header(); ?>
	<div class="img-cat">
		<div class="bg-img" style="background-image:url('<?php if (function_exists('z_taxonomy_image_url')) echo z_taxonomy_image_url();  ?>')">
			<?php the_archive_description(); ?>
		</div>
	</div>
	<?php if (is_category(array(464, 465, 466, 467))) : ?>
	<ul class="sub-cat">
		<li class="cat-item <?php echo (is_category(465) ? "active" : ""); ?>"><a href="<?php echo get_category_link(465); ?>"><?php echo get_cat_name(465); ?></a></li>
		<li class="cat-item <?php echo (is_category(466) ? "active" : ""); ?>"><a href="<?php echo get_category_link(466); ?>"><?php echo get_cat_name(466); ?></a></li>
		<li class="cat-item <?php echo (is_category(467) ? "active" : ""); ?>"><a href="<?php echo get_category_link(467); ?>"><?php echo get_cat_name(467); ?></a></li>
	</ul>
	<?php endif; ?>
	<div id="content" class="container">
		<section id="primary" class="content-area <?php echo of_get_option( 'site_layout' ); ?>">
			<main id="main" class="site-main row" role="main">

			<?php if ( have_posts() ) : ?>

				<header class="page-header col-sm-12">
					<h1 class="page-title">
						<?php
							if ( is_category() ) :

							elseif ( is_tag() ) :
								single_tag_title();

							elseif ( is_author() ) :
								printf( __( 'Author: %s', 'dazzling' ), '<span class="vcard">' . get_the_author() . '</span>' );

							elseif ( is_day() ) :
								printf( __( 'Day: %s', 'dazzling' ), '<span>' . get_the_date() . '</span>' );

							elseif ( is_month() ) :
								printf( __( 'Month: %s', 'dazzling' ), '<span>' . get_the_date( _x( 'F Y', 'monthly archives date format', 'dazzling' ) ) . '</span>' );

							elseif ( is_year() ) :
								printf( __( 'Year: %s', 'dazzling' ), '<span>' . get_the_date( _x( 'Y', 'yearly archives date format', 'dazzling' ) ) . '</span>' );

							elseif ( is_tax( 'post_format', 'post-format-aside' ) ) :
								_e( 'Asides', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-gallery' ) ) :
								_e( 'Galleries', 'dazzling');

							elseif ( is_tax( 'post_format', 'post-format-image' ) ) :
								_e( 'Images', 'dazzling');

							elseif ( is_tax( 'post_format', 'post-format-video' ) ) :
								_e( 'Videos', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
								_e( 'Quotes', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-link' ) ) :
								_e( 'Links', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-status' ) ) :
								_e( 'Statuses', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-audio' ) ) :
								_e( 'Audios', 'dazzling' );

							elseif ( is_tax( 'post_format', 'post-format-chat' ) ) :
								_e( 'Chats', 'dazzling' );

							else :
								_e( 'Archives', 'dazzling' );

							endif;
						?>
					</h1>
				</header><!-- .page-header -->

				<?php /* Start the Loop */ ?>
				<?php while ( have_posts() ) : the_post(); ?>

					<?php
						/* Include the Post-Format-specific template for the content.
						 * If you want to override this in a child theme, then include a file
						 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
						 */
						if (in_category("du-an")) {
							get_template_part( 'content', 'project' );
						} elseif (is_category("doi-tac")) {
							get_template_part( 'content', 'partner' );
						} elseif (is_category(array("tin-tuc", "tin-cong-ty", "tin-bat-dong-san", "su-kien-hinh-anh"))) {
							get_template_part( 'content', 'news' );
						} else {
							get_template_part( 'content', get_post_format() );
						}
					?>

				<?php endwhile; ?>

				<?php dazzling_paging_nav(); ?>

			<?php else : ?>

				<?php get_template_part( 'content', 'none' ); ?>

			<?php endif; ?>

			</main><!-- #main -->
		</section><!-- #primary -->

<?php get_footer(); ?>
