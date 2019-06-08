<?php
/**
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<div class="entry-content">
		<div class="container">
			<h1 class="title"><?php the_title(); ?></h1>
			<div class="line-break"></div>
			<?php $thu_vien = rwmb_meta("thu-vien-hinh-anh"); if ($thu_vien) : ?>
			<div class="row gallery-project">
				<div class="swiper-container gallery-top">
					<div class="swiper-wrapper">
						<?php foreach ( $thu_vien as $gallery ) { ?>
						<div class="swiper-slide" style="background-image:url('<?php echo $gallery['full_url']; ?>')"></div>
						<?php } ?>
					</div>
					<!-- Add Arrows -->
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<div class="swiper-container gallery-thumbs">
					<div class="swiper-wrapper">
						<?php foreach ( $thu_vien as $gallery ) { ?>
						<div class="swiper-slide" style="background-image:url('<?php echo $gallery['full_url']; ?>')"></div>
						<?php } ?>
					</div>
				</div>
			</div>
			<?php endif; ?>
			<?php $tong_quan = rwmb_meta("tong-quan-du-an"); ?>
			<div class="row content-project">
				<h2 class="col-sm-12 title">Tổng quan</h2>
				<div class="col-sm-4 info-project wow fadeInLeft" data-wow-duration="1.5s">
					<div class="detail-info">
						<p class="investor">Chủ đầu tư: <span><?php echo $tong_quan[0]; ?></span></p>
						<p class="name-project">Tên dự án: <span><?php echo $tong_quan[1]; ?></span></p>
						<p class="total-area">Tổng diện tích: <span><?php echo $tong_quan[2]; ?></span></p>
						<?php if ($tong_quan[3]) : ?>
							<p class="product-project">Sản phẩm: <span><?php echo $tong_quan[3]; ?></span></p>
						<?php endif; ?>
					</div>
				</div>
				<div class="col-sm-8 detail-project wow fadeInRight" data-wow-duration="1.5s">
					<?php the_content(); ?>
				</div>
				<h2 class="col-sm-12 title">Vị trí dự án</h2>
				<?php $vi_tri = rwmb_meta("vi-tri-du-an"); if ($vi_tri) : ?>
				<div class="col-sm-6 info-location wow fadeInLeft" data-wow-duration="1.5s">
					<?php echo $vi_tri; ?>
				</div>
				<?php endif; ?>
				<?php $img_vi_tri = rwmb_meta("hinh-vi-tri-du-an"); if ($img_vi_tri) : ?>
				<div class="col-sm-6 img-location wow fadeInRight" data-wow-duration="1.5s">
					<img src="<?php echo $img_vi_tri['full_url'] ?>" alt="vị trí dự án">
				</div>
				<?php endif; ?>
				<?php $tien_ich = rwmb_meta("tien-ich-du-an"); if ($tien_ich) : ?>
				<h2 class="col-sm-12 title">Tiện ích dự án</h2>
				<div class="col-sm-12 utilities wow fadeInUp" data-wow-duration="1.5s">
					<?php echo $tien_ich; ?>
				</div>
				<div class="col-sm-12 text-center">
					<div class="form-contact wow bounceInUp" data-wow-duration="1.5s">
						<h3>Gửi nội dung liên hệ</h3>
						<?php echo do_shortcode('[contact-form-7 id="1595" title="Contact form 1"]'); ?>
					</div>
				</div>
				<?php endif; ?>
			</div>
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
			<?php $args_related = array('category_name' => 'du-an', 'posts_per_page' => 6, 'post__not_in' => array(get_the_ID())); ?>
			<?php $query_related = new WP_Query($args_related); ?>
			<?php if ($query_related->have_posts()) : ?>
			<div class="row related-post">
				<h2 class="col-sm-12 title">Dự án liên quan</h2>
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