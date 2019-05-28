<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(array("col-sm-4", "project-cat")); ?>>

	<div class="entry-content">
        <?php if ( has_post_thumbnail()) : ?>
        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" class="img-post" >
            <?php the_post_thumbnail(); ?>
        </a>
        <?php endif; ?>
        <h2 class="entry-title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
        <?php the_excerpt(); ?>

		<a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"></a>

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
