<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package dazzling
 */

get_header(); ?>
	<div class="top-section">
		<?php dazzling_featured_slider(); ?>
		<?php dazzling_call_for_action(); ?>
		<div style="clear:both"></div>
	</div>
	<?php $args_project = array('cat' => 462, 'posts_per_page' => 3); $query_project = new WP_Query($args_project); ?>
	<?php if ($query_project->have_posts()) : ?>
	<div class="project">
		<div class="container">
			<div class="row">
				<h2>Dự án đang triển khai</h2>
				<p class="col-12 list-project">
				<?php
					$children = get_terms( "category", array(
						'parent'    => 462,
					) );
					if ( $children ) { 
						foreach( $children as $subcat )
						{
							echo '<span><a href="' . esc_url(get_term_link($subcat, $subcat->taxonomy)) . '">' . $subcat->name . '</a></span>';
						}
					}
				?>
				<?php while ($query_project->have_posts()) : $query_project->the_post(); ?>
				<div class="col-lg-4 col-md-6 col-sm-6 info-project wow slideInUp" data-wow-offset="100">
					<a href="<?php the_permalink(); ?>">
						<div class="hover-animation">
							<?php the_post_thumbnail( 'thumbnail', array( 'class' => 'img-thumbnail' ) ); ?>
						</div>
						<h3><?php the_title(); ?></h3>
						<?php the_excerpt(); ?>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
				<?php endwhile; ?>
			</div>
		</div>
	</div>
	<?php endif; wp_reset_postdata(); ?>
	<?php 
		$about_us = new WP_Query("page_id=1555");
		while ( $about_us->have_posts() ) : $about_us->the_post();
	?>
	<div class="about-us">
		<div class="container">
			<div class="row">
				<h2>Giới thiệu</h2>
				<p class="col-12 text-about-us"><?php echo get_the_excerpt(); ?></p>
				<div class="col-lg-4 col-md-6 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Giới thiệu chung</h3>
					<div class="info">
						<?php $aboutUsDetail = rwmb_meta('gioi-thieu-chi-tiet'); echo $aboutUsDetail; ?>
					</div>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-lg-4 col-md-6 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Quá trình phát triển</h3>
					<div class="info">
						<?php $timeLine = rwmb_meta('gioi-thieu-qua-trinh-phat-trien'); echo $timeLine; ?>
					</div>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-lg-4 col-md-6 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Ban lãnh đạo</h3>
					<div class="info">
						<?php $bod = rwmb_meta('gioi-thieu-ban-lanh-dao'); echo $bod; ?>
					</div>
					<a href="#">Chi tiết...</a>
				</div>
			</div>
		</div>
	</div>
	<?php endwhile; ?>
	<div class="why-us">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 info-why-us">
					<h2>Vì sao chọn chúng tôi?</h2>
					<p>Đầu tư, Xây dựng và Kinh doanh trong lĩnh vực Bất động sản với triết lý kinh doanh ''Vươn đến tầm cao mới'' - tầm cao của tư duy, tầm cao của trách nhiệm, tầm cao của những giá trị.</p>
				</div>
				<div class="col-lg-7 col-md-6 detail-why-us">
					<div class="container">
						<div class="row">
							<div class="col-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="7">7+</p>
								<p>Dự án đang chào bán</p>
								<p class="line-item"></p>
							</div>
							<div class="col-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="45">45+</p>
								<p>Nhân viên</p>
								<p class="line-item"></p>
							</div>
							<div class="col-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="5783">5783+</p>
								<p>Giao dịch thành công</p>
							</div>
							<div class="col-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="10">10+</p>
								<p>Năm kinh doanh</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php $args_news = array('cat' => 464, 'posts_per_page' => 5); $query_news = new WP_Query($args_news); ?>
	<?php $args_allnews = array('cat' => 464); $query_allnews = new WP_Query($args_allnews); ?>
	<?php if ($query_news->have_posts()) : $post_news = 1; ?>
	<div class="news">
		<h2>Tin tức mới</h2>
		<div class="container">
			<div class="row">
				<?php while ($query_news->have_posts()) : $query_news->the_post(); ?>
				<?php
					$children = get_terms( "category", array(
						'parent'    => 464,
					) );
				?>
				<?php if ($post_news==1) : ?>
				<div class="col-lg-5 col-md-12 news-left wow fadeInLeft" data-wow-offset="150">
					<a href="<?php the_permalink() ?>">
						<div class="hover-animation">
							<?php the_post_thumbnail(); ?>
						</div>
						<h3><?php the_title(); ?></h3>
					</a>
					<p class="date-post">
						<?php echo get_the_date(); ?>
						<?php
							if ( $children ) { 
								echo ' - ';
								foreach( $children as $subcat )
								{
									echo '<span>'. $subcat->name . '</span>';
								}
							}
						?>
					</p>
					<?php the_excerpt(); ?>
				</div>
				<?php elseif ($post_news==2 && $post_news==$query_news->found_posts) : ?>
				<div class="col-lg-7 col-md-12 news-right">
					<div class="container">
						<div class="row">
							<div class="col-lg-3 col-md-4 col-sm-5 news-img wow fadeInUp" data-wow-offset="150">
								<a href="<?php the_permalink() ?>" class="hover-animation">
									<?php the_post_thumbnail(); ?>
								</a>
							</div>
							<div class="col-lg-9 col-md-8 col-sm-7 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4><?php the_title(); ?></h4>
								</a>
								<p class="date-post">
									<?php echo get_the_date(); ?>
									<?php
										if ( $children ) { 
											echo ' - ';
											foreach( $children as $subcat )
											{
												echo '<span>'. $subcat->name . '</span>';
											}
										}
									?>
								</p>
								<?php the_excerpt(); ?>
							</div>
						</div>
					</div>
				</div>
				<?php elseif ($post_news==2 && $post_news!=$query_news->found_posts) : ?>
				<div class="col-lg-7 col-md-12 news-right">
					<div class="container">
						<div class="row">
							<div class="col-lg-3 col-md-4 col-sm-5 news-img wow fadeInUp" data-wow-offset="150">
								<a href="<?php the_permalink() ?>" class="hover-animation">
									<?php the_post_thumbnail(); ?>
								</a>
							</div>
							<div class="col-lg-9 col-md-8 col-sm-7 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4><?php the_title(); ?></h4>
								</a>
								<p class="date-post">
									<?php echo get_the_date(); ?>
									<?php
										if ( $children ) { 
											echo ' - ';
											foreach( $children as $subcat )
											{
												echo '<span>'. $subcat->name . '</span>';
											}
										}
									?>
								</p>
								<?php the_excerpt(); ?>
							</div>
				<?php elseif ($post_news==$query_news->found_posts) : ?>
							<div class="col-lg-3 col-md-4 col-sm-5 news-img wow fadeInUp" data-wow-offset="150">
								<a href="<?php the_permalink() ?>" class="hover-animation">
									<?php the_post_thumbnail(); ?>
								</a>
							</div>
							<div class="col-lg-9 col-md-8 col-sm-7 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4><?php the_title(); ?></h4>
								</a>
								<p class="date-post">
									<?php echo get_the_date(); ?>
									<?php
										if ( $children ) { 
											echo ' - ';
											foreach( $children as $subcat )
											{
												echo '<span>'. $subcat->name . '</span>';
											}
										}
									?>
								</p>
								<?php the_excerpt(); ?>
							</div>
						</div>
					</div>
				</div>
				<?php else : ?>
							<div class="col-lg-3 col-md-4 col-sm-5 news-img wow fadeInUp" data-wow-offset="150">
								<a href="<?php the_permalink() ?>" class="hover-animation">
									<?php the_post_thumbnail(); ?>
								</a>
							</div>
							<div class="col-lg-9 col-md-8 col-sm-7 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4><?php the_title(); ?></h4>
								</a>
								<p class="date-post">
									<?php echo get_the_date(); ?>
									<?php
										if ( $children ) { 
											echo ' - ';
											foreach( $children as $subcat )
											{
												echo '<span>'. $subcat->name . '</span>';
											}
										}
									?>
								</p>
								<?php the_excerpt(); ?>
							</div>
				<?php endif; ?>
				<?php $post_news++; endwhile; ?>
				<?php if ($query_allnews->found_posts > $query_news->found_posts) : ?>
				<div class="col-sm-12">
					<a href="<?php echo get_category_link(464); ?>" class="more-news">Xem tất cả</a>
				</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<?php endif; wp_reset_postdata(); ?>
	<?php $args_event = array('cat' => 467, 'posts_per_page' => 6); $query_event = new WP_Query($args_event); ?>
	<?php if ($query_event->have_posts()) : ?>
	<div class="event">
		<h2>Sự kiện - Hình ảnh</h2>
		<div class="container">
			<div class="row">
				<?php while ($query_event->have_posts()) : $query_event->the_post(); ?>
				<div class="col-lg-4 col-sm-6 event-item wow slideInUp" data-wow-offset="100">
					<a href="<?php the_permalink() ?>">
						<div class="hover-animation">
							<?php the_post_thumbnail(); ?>
						</div>
						<h4><?php the_title(); ?></h4>
					</a>
				</div>
				<?php endwhile; ?>
			</div>
		</div>
	</div>
	<?php endif; wp_reset_postdata(); ?>
	<?php $args_partner = array('cat' => 463, 'posts_per_page' => 10); $query_partner = new WP_Query($args_partner); ?>
	<?php if ($query_partner->have_posts()) : ?>
	<div class="partner">
		<h2>Đối tác của chúng tôi</h2>
		<div class="container wow fadeIn" data-wow-offset="100">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<?php while ($query_partner->have_posts()) : $query_partner->the_post(); ?>
					<div class="swiper-slide">
						<?php the_post_thumbnail(); ?>
					</div>
					<?php endwhile; ?>
				</div>
			</div>
		</div>
	</div>
	<?php endif; wp_reset_postdata(); ?>

<?php get_footer(); ?>