<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(array("col-lg-3", "col-md-4", "col-sm-6", "news-cat", "wow", "fadeInUp")); ?>>

	<div class="entry-content">
        <?php if ( has_post_thumbnail()) : ?>
		<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="img-post" >
			<div class="hover-animation">
				<?php the_post_thumbnail(); ?>
			</div>
        </a>
        <?php endif; ?>
        <h2 class="entry-title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
        <p class="date-post"><span><?php echo get_the_date(); ?></span></p>
        <?php the_excerpt(); ?>

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