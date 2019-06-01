<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(array("col-sm-3", "partner-cat", "wow", "fadeInUp")); ?>>

	<div class="entry-content">
        <?php if ( has_post_thumbnail()) : ?>
        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="img-post" >
			<div class="logo-partner">
				<?php the_post_thumbnail(); ?>
			</div>
			<div class="info-partner">
			<?php endif; ?>
				<h2 class="entry-title"><?php the_title(); ?></h2>
				<?php the_excerpt(); ?>
			</div>
		</a>
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
	</div><!-- .entry-content -->
	
</article><!-- #post-## -->
