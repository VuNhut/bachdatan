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
	<div class="project">
		<div class="container">
			<div class="row">
				<h2>Dự án đang triển khai</h2>
				<p class="col-12 list-project"><span>Căn hộ</span><span>Biệt thự - Đất nền</span><span>Nhà phố</span></p>
				<div class="col-sm-4 info-project wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-1.jpg" class="img-thumbnail" alt="">
						</div>
						<h3>MeKong Pearl</h3>
						<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
				<div class="col-sm-4 info-project wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-2.jpg" class="img-thumbnail" alt="">
						</div>
						<h3>MeKong Pearl</h3>
						<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
				<div class="col-sm-4 info-project wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-3.jpg" class="img-thumbnail" alt="">
						</div>
						<h3>MeKong Pearl</h3>
						<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="about-us">
		<div class="container">
			<div class="row">
				<h2>Giới thiệu</h2>
				<p class="col-12 text-about-us">Với triết lý kinh doanh "Vươn đến tầm cao mới" - tầm cao của tư duy, tầm cao của trách nhiệm, tầm cao của những giá trị, tin rằng Bách Đạt An sẽ nhanh chóng trở thành đối tác tin cậy hàng đầu tại Việt Nam về Đầu tư, Phát triển và Xây dựng các dự án Bất động sản cao cấp.</p>
				<div class="col-sm-4 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Giới thiệu chung</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-sm-4 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Quá trình phát triển</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-sm-4 info-about-us wow fadeInUp" data-wow-offset="100">
					<h3>Ban lãnh đạo</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
			</div>
		</div>
	</div>
	<div class="why-us">
		<div class="container">
			<div class="row">
				<div class="col-sm-5 info-why-us">
					<h2>Vì sao chọn chúng tôi?</h2>
					<p>Đầu tư, Xây dựng và Kinh doanh trong lĩnh vực Bất động sản với triết lý kinh doanh ''Vươn đến tầm cao mới'' - tầm cao của tư duy, tầm cao của trách nhiệm, tầm cao của những giá trị.</p>
				</div>
				<div class="col-sm-7 detail-why-us">
					<div class="container">
						<div class="row">
							<div class="col-sm-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="7">7+</p>
								<p>Dự án đang chào bán</p>
								<p class="line-item"></p>
							</div>
							<div class="col-sm-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="45">45+</p>
								<p>Nhân viên</p>
								<p class="line-item"></p>
							</div>
							<div class="col-sm-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="5783">5783+</p>
								<p>Giao dịch thành công</p>
							</div>
							<div class="col-sm-6 detail-item wow fadeInLeft" data-wow-offset="150">
								<p class="count number-item" data-value="10">10+</p>
								<p>Năm kinh doanh</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="news">
		<h2>Tin tức mới</h2>
		<div class="container">
			<div class="row">
				<div class="col-sm-5 news-left wow fadeInLeft" data-wow-offset="150">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h3>Lorem ipsum dolor sit amet has alterum reformidans in</h3>
					</a>
					<p class="date-post">27/05/2019</p>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
				</div>
				<div class="col-sm-7 news-right">
					<div class="container">
						<div class="row">
							<div class="col-sm-3 news-img wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
								</a>
							</div>
							<div class="col-sm-9 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4>Lorem ipsum dolor sit amet has alterum reformidans in</h4>
								</a>
								<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
							</div>
							<div class="col-sm-3 news-img wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
								</a>
							</div>
							<div class="col-sm-9 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4>Lorem ipsum dolor sit amet has alterum reformidans in</h4>
								</a>
								<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
							</div>
							<div class="col-sm-3 news-img wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
								</a>
							</div>
							<div class="col-sm-9 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4>Lorem ipsum dolor sit amet has alterum reformidans in</h4>
								</a>
								<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
							</div>
							<div class="col-sm-3 news-img wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
								</a>
							</div>
							<div class="col-sm-9 news-info wow fadeInUp" data-wow-offset="150">
								<a href="#" class="hover-animation">
									<h4>Lorem ipsum dolor sit amet has alterum reformidans in</h4>
								</a>
								<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<a href="#" class="more-news">Xem tất cả</a>
				</div>
			</div>
		</div>
	</div>
	<div class="event">
		<h2>Sự kiện - Hình ảnh</h2>
		<div class="container">
			<div class="row">
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
				<div class="col-sm-4 event-item wow slideInUp" data-wow-offset="100">
					<a href="#">
						<div class="hover-animation">
							<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/news.jpg" alt="">
						</div>
						<h4>Tiệc tất niên công ty 2019</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="partner">
		<h2>Đối tác của chúng tôi</h2>
		<div class="container wow fadeIn" data-wow-offset="100">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/partner-1.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/partner-2.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/partner-3.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/partner-4.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/partner-5.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>

<?php get_footer(); ?>