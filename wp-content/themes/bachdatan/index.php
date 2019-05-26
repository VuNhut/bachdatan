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
				<div class="col-sm-4 info-project">
					<a href="#">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-1.jpg" class="img-thumbnail" alt="">
						<h3>MeKong Pearl</h3>
						<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
				<div class="col-sm-4 info-project">
					<a href="#">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-2.jpg" class="img-thumbnail" alt="">
						<h3>MeKong Pearl</h3>
						<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
						<p class="read-more">Chi tiết</p>
					</a>
				</div>
				<div class="col-sm-4 info-project">
					<a href="#">
						<img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/du-an-3.jpg" class="img-thumbnail" alt="">
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
				<div class="col-sm-4 info-about-us">
					<h3>Giới thiệu chung</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-sm-4 info-about-us">
					<h3>Quá trình phát triển</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
				<div class="col-sm-4 info-about-us">
					<h3>Ban lãnh đạo</h3>
					<p>Lorem ipsum dolor sit amet, has alterum reformidans in, eu nibh omnis lobortis mei. Per dicat maiestatis vituperatoribus id, etiam praesent an eam. Eum ex repudiare theophrastus, paulo utinam oporteat sea ne.</p>
					<a href="#">Chi tiết...</a>
				</div>
			</div>
		</div>
	</div>

<?php get_footer(); ?>