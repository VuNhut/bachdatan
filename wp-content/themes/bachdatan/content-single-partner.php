<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-content">
		<div class="container">
			<div class="row">
                <div class="col-sm-12 logo-partner text-center mb-3"><?php the_post_thumbnail(); ?></div>
				<div class="col-sm-12 info-partner">
                    <h1><?php the_title(); ?></h1>
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
                </div>
				<?php $args_related = array('cat' => 463, 'posts_per_page' => 6, 'post__not_in' => array(get_the_ID())); ?>
				<?php $query_related = new WP_Query($args_related); ?>
				<?php if ($query_related->have_posts()) : ?>
				<div class="row related-post">
					<h2 class="col-sm-12 title">Các đối tác khác</h2>
					<?php
						while ($query_related->have_posts()) : $query_related->the_post();
							get_template_part( 'content', 'partner' );
						endwhile;
					?>
				</div>
				<?php endif; wp_reset_postdata(); ?>
			</div>
		</div>
	</div><!-- .entry-content -->
</article><!-- #post-## -->