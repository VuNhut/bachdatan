<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-content">
		<div class="container">
			<div class="row">
				<p class="col-xl-1 col-md-2 col-3 date-time"><span><?php echo get_the_date("j") ?></span><span><?php echo get_the_date("m/Y") ?></span></p>
				<h1 class="col-xl-11 col-md-10 col-9 title-post"><?php the_title(); ?></h1>
			</div>
			<?php the_content(); ?>
			<?php
				wp_link_pages( array(
					'before'            => '<div class="page-links">'.__( 'Pages:', 'dazzling' ),
					'after'             => '</div>',
					'link_before'       => '<span>',
					'link_after'        => '</span>',
					'pagelink'          => '%',
					'echo'              => 1
				) );
			?>
			<?php
				$category = get_the_category();
				$cat = [];
				for ($i=0; $i < count($category); $i++) { 
					$cat[$i] = $category[$i]->slug;
				}
			?>
			<?php $args_related = array('category_name' => implode(",", $cat), 'posts_per_page' => 6, 'post__not_in' => array(get_the_ID())); ?>
			<?php $query_related = new WP_Query($args_related); ?>
			<?php if ($query_related->have_posts()) : ?>
			<div class="row related-post">
				<h2 class="col-sm-12 title">Tin liên quan</h2>
				<?php
					while ($query_related->have_posts()) : $query_related->the_post();
						get_template_part( 'content', 'project' );
					endwhile;
				?>
			</div>
			<?php endif; wp_reset_postdata(); ?>
		</div>
	</div><!-- .entry-content -->
</article><!-- #post-## -->
