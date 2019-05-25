<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package dazzling
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="geo.position" content="10.793059;106.62913">
<meta name="geo.placename" content="TP HCM">
<meta name="geo.region" content="VN-65">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>

</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site no-touch">

		<div class="container header">
			<div class="row">

				<?php if( get_header_image() != '' ) : ?>

					<div id="logo" class="col-lg-4 col-12">
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php header_image(); ?>"  height="<?php echo get_custom_header()->height; ?>" width="<?php echo get_custom_header()->width; ?>" alt="<?php bloginfo( 'name' ); ?>"/></a>
					</div><!-- end of #logo -->

				<?php endif; // header image was removed ?>

				<?php if( !get_header_image() ) : ?>

				<div id="logo" class="col-lg-4 col-12">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>
						</div><!-- end of #logo -->

						<?php endif; // header image was removed (again) ?>

				<form role="search" method="get" class="woocommerce-product-search col-lg-4 col-md-6" action="<?php echo esc_url( home_url( '/' ) ); ?>">
					<label class="screen-reader-text" for="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>"><?php _e( 'Search for:', 'woocommerce' ); ?></label>
					<input type="search" id="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>" class="search-field" placeholder="<?php echo esc_attr__( 'Bạn cần tìm gì&hellip;', 'woocommerce' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
					<input type="submit" value="Tìm kiếm" />
					<input type="hidden" name="post_type" value="product" />
				</form>
				<div class="hotline-mobile col-lg-4 col-md-6">
					<span class="hotro-dathang"><i class="fas fa-mobile-alt"></i>Hotline liên hệ:</span>
					<span><a href="tel:0946201949"> 0946 201 949</a></span>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-default navbar-expand-lg">
			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#exCollapsingNavbar2" aria-controls="exCollapsingNavbar2" aria-expanded="false">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" role="img" focusable="false"><path stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="2" d="M4 7h22M4 15h22M4 23h22"></path></svg>
			</button>
			<?php dazzling_header_menu(); ?>
		</nav><!-- .site-navigation -->
		<div class="list-product-mobile">
			<p>Danh mục sản phẩm</p>
			<button class="navbar-toggler hidden-xl-up" type="button">
				<span class="line"></span>
				<span class="line"></span>
				<span class="line"></span>
			</button>
		</div>