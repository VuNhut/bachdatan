<?php
/**
 * Dazzling functions and definitions
 *
 * @package dazzling
 */

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 730; /* pixels */
}

/**
 * Set the content width for full width pages with no sidebar.
 */
function dazzling_content_width() {
  if ( is_page_template( 'page-fullwidth.php' ) || is_page_template( 'front-page.php' ) ) {
    global $content_width;
    $content_width = 1110; /* pixels */
  }
}
add_action( 'template_redirect', 'dazzling_content_width' );

if ( ! function_exists( 'dazzling_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function dazzling_setup() {

  /*
   * Make theme available for translation.
   * Translations can be filed in the /languages/ directory.
   * If you're building a theme based on Dazzling, use a find and replace
   * to change 'dazzling' to the name of your theme in all the template files
   */
  load_theme_textdomain( 'dazzling', get_template_directory() . '/languages' );

  // Add default posts and comments RSS feed links to head.
  add_theme_support( 'automatic-feed-links' );

  /*
   * Enable support for Post Thumbnails on posts and pages.
   *
   * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
   */
  add_theme_support( 'post-thumbnails' );

  add_image_size( 'dazzling-featured', 730, 410, true );
  add_image_size( 'tab-small', 60, 60 , true); // Small Thumbnail

  // This theme uses wp_nav_menu() in one location.
  register_nav_menus( array(
    'primary'      => __( 'Primary Menu', 'dazzling' ),
    'footer-links' => __( 'Footer Links', 'dazzling' ) // secondary menu in footer
  ) );

  // Enable support for Post Formats.
  add_theme_support( 'post-formats', array( 'aside', 'image', 'video', 'quote', 'link' ) );

  // Setup the WordPress core custom background feature.
  add_theme_support( 'custom-background', apply_filters( 'dazzling_custom_background_args', array(
  	'default-color' => 'ffffff',
  	'default-image' => '',
  ) ) );

  /*
   * Let WordPress manage the document title.
   * By adding theme support, we declare that this theme does not use a
   * hard-coded <title> tag in the document head, and expect WordPress to
   * provide it for us.
   */
  add_theme_support( 'title-tag' );
}
endif; // dazzling_setup
add_action( 'after_setup_theme', 'dazzling_setup' );

/**
 * Register widgetized area and update sidebar with default widgets.
 */
function dazzling_widgets_init() {
  register_sidebar( array(
    'name'          => __( 'Sidebar', 'dazzling' ),
    'id'            => 'sidebar-1',
    'before_widget' => '<aside id="%1$s" class="widget %2$s">',
    'after_widget'  => '</aside>',
    'before_title'  => '<h3 class="widget-title">',
    'after_title'   => '</h3>',
  ) );
  register_sidebar(array(
    'id'            => 'home-widget-1',
    'name'          => __( 'Homepage Widget 1', 'dazzling' ),
    'description'   => __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'home-widget-2',
    'name'          =>  __( 'Homepage Widget 2', 'dazzling' ),
    'description'   => __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'home-widget-3',
    'name'          =>  __( 'Homepage Widget 3', 'dazzling' ),
    'description'   =>  __( 'Displays on the Home Page', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-1',
    'name'          =>  __( 'Footer Widget 1', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-2',
    'name'          =>  __( 'Footer Widget 2', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-3',
    'name'          =>  __( 'Footer Widget 3', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));

  register_sidebar(array(
    'id'            => 'footer-widget-4',
    'name'          =>  __( 'Footer Widget 4', 'dazzling' ),
    'description'   =>  __( 'Used for footer widget area', 'dazzling' ),
    'before_widget' => '<div id="%1$s" class="widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widgettitle">',
    'after_title'   => '</h3>',
  ));


  register_widget( 'dazzling_popular_posts_widget' );
}
add_action( 'widgets_init', 'dazzling_widgets_init' );

include(get_template_directory() . "/inc/popular-posts-widget.php");


/**
 * Enqueue scripts and styles.
 */
function dazzling_scripts() {

  wp_enqueue_style( 'dazzling-bootstrap', get_template_directory_uri() . '/inc/css/bootstrap.css' );

  wp_enqueue_style( 'dazzling-icons', get_template_directory_uri().'/inc/css/all.min.css' );

  wp_enqueue_style( 'dazzling-style', get_stylesheet_uri() );
  
  wp_enqueue_style( 'animate-css', get_template_directory_uri().'/inc/css/animate.min.css' );

  wp_enqueue_script('dazzling-popper', get_template_directory_uri().'/inc/js/popper.js', array('jquery'), '1.5.4', true );

  wp_enqueue_script('dazzling-bootstrapjs', get_template_directory_uri().'/inc/js/bootstrap.min.js', array('jquery'), '1.5.4', true );

  wp_enqueue_script( 'wow-js', get_template_directory_uri() . '/inc/js/wow.min.js', array('jquery'), '1.5.4', true );

  wp_enqueue_script( 'dazzling-main', get_template_directory_uri() . '/inc/js/main.js', array('jquery'), '1.5.4', true );

  wp_enqueue_script( 'script-menu', get_template_directory_uri() . '/inc/js/script-menu.js', array('jquery'), '1.5.4', true );

  if( ( is_home() || is_front_page() ) && of_get_option('dazzling_slider_checkbox') == 1 ) {
    wp_enqueue_script( 'dazzling-scriptmain', get_template_directory_uri() . '/inc/js/script-main.js', array('jquery'), '1.5.4', true );
    wp_enqueue_style( 'flexslider-css', get_template_directory_uri().'/inc/css/flexslider.css' );
    wp_enqueue_script( 'flexslider', get_template_directory_uri() . '/inc/js/flexslider.min.js', array('jquery'), '1.5.4', true );
  }
  if( is_home() || is_front_page() ) {
    wp_enqueue_style( 'swiper-css', get_template_directory_uri().'/inc/css/swiper.css' );
    wp_enqueue_script( 'swiperjs', get_template_directory_uri() . '/inc/js/swiper.min.js', array('jquery'), '1.5.4', true );
  }
  if( is_page("gioi-thieu") ) {
    wp_enqueue_style( 'swiper-css', get_template_directory_uri().'/inc/css/swiper.css' );
    wp_enqueue_script( 'swiperjs', get_template_directory_uri() . '/inc/js/swiper.min.js', array('jquery'), '1.5.4', true );
    wp_enqueue_style( 'timeline-css', get_template_directory_uri().'/inc/css/timeline.css' );
    wp_enqueue_script( 'timelinejs', get_template_directory_uri() . '/inc/js/timeline.js', array('jquery'), '1.5.4', true );
    wp_enqueue_script( 'script-aboutus', get_template_directory_uri() . '/inc/js/script-aboutus.js', array('jquery'), '1.5.4', true );
  }
  if(is_single() && in_category(462)) {
    wp_enqueue_style( 'swiper-css', get_template_directory_uri().'/inc/css/swiper.css' );
    wp_enqueue_script( 'swiperjs', get_template_directory_uri() . '/inc/js/swiper.min.js', array('jquery'), '1.5.4', true );
  }
}
add_action( 'wp_enqueue_scripts', 'dazzling_scripts' );

/**
 * Add HTML5 shiv and Respond.js for IE8 support of HTML5 elements and media queries
 */
function dazzling_ie_support_header() {
  echo '<!--[if lt IE 9]>'. "\n";
  echo '<script src="' . esc_url( get_template_directory_uri() . '/inc/js/html5shiv.min.js' ) . '"></script>'. "\n";
  echo '<script src="' . esc_url( get_template_directory_uri() . '/inc/js/respond.min.js' ) . '"></script>'. "\n";
  echo '<![endif]-->'. "\n";
}
add_action( 'wp_head', 'dazzling_ie_support_header', 11 );

/*
 * Loads the Options Panel
 *
 * If you're loading from a child theme use stylesheet_directory
 * instead of template_directory
 */
define( 'OPTIONS_FRAMEWORK_DIRECTORY', get_template_directory_uri() . '/inc/admin/' );
require_once dirname( __FILE__ ) . '/inc/admin/options-framework.php';
// Loads options.php from child or parent theme
$optionsfile = locate_template( 'options.php' );
load_template( $optionsfile );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

/**
 * Load custom nav walker
 */
require get_template_directory() . '/inc/navwalker.php';

if ( class_exists( 'woocommerce' ) ) {
/**
 * WooCommerce related functions
 */
require get_template_directory() . '/inc/woo-setup.php';
}

if ( class_exists( 'jigoshop' ) ) {
/**
 * Jigoshop related functions
 */
require get_template_directory() . '/inc/jigoshop-setup.php';
}

add_action( 'after_setup_theme', 'maynenkhilehung_setup' );
 
function maynenkhilehung_setup() {
  add_theme_support( 'wc-product-gallery-lightbox' );
  add_theme_support( 'wc-product-gallery-slider' );
}

remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_title', 5 );
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40 );
remove_action( 'woocommerce_before_shop_loop' , 'woocommerce_result_count', 20 ); // Remove the result count from WooCommerce
add_filter( 'woocommerce_product_tabs', 'woo_remove_product_tabs', 98 );

function woo_remove_product_tabs( $tabs ) {
  unset( $tabs['additional_information'] );   // Remove the additional information tab
  return $tabs;
}

add_filter( 'woocommerce_product_tabs', 'woo_rename_tabs', 98 );
function woo_rename_tabs( $tabs ) {
  $tabs['description']['title'] = __( 'Thông tin' );   // Rename the description tab
  return $tabs;
}

/**
 * Change the breadcrumb separator
 */
add_filter( 'woocommerce_breadcrumb_defaults', 'wcc_change_breadcrumb_delimiter' );
function wcc_change_breadcrumb_delimiter( $defaults ) {
	// Change the breadcrumb delimeter from '/' to '>>'
	$defaults['delimiter'] = ' <i class="fas fa-angle-double-right"></i> ';
	return $defaults;
}

/* Meta Box Dự Án */
function get_meta_box_duan( $meta_boxes ) {
	$prefix = '';

	$meta_boxes[] = array(
		'id' => 'thong-tin-du-an',
		'title' => esc_html__( 'Thông tin dự án', 'dazzling' ),
		'post_types' => array( 'post' ),
		'context' => 'advanced',
		'priority' => 'default',
		'autosave' => false,
		'fields' => array(
			array(
				'id' => $prefix . 'thu-vien-hinh-anh',
				'type' => 'image_advanced',
        'name' => esc_html__( 'Thư viện hình ảnh', 'dazzling' ),
      ),
      array(
        'id'      => 'tong-quan-du-an',
        'name'    => 'Tổng quan dự án *',
        'type'    => 'text_list',
        'options' => array(
            'Chủ đầu tư'      => 'Chủ đầu tư *',
            'Tên dự án' => 'Tên dự án *',
            'Tổng diện tích' => 'Tổng diện tích *',
            'Sản phẩm'      => 'Sản phẩm',
        ),
      ),
      array(
        'name'    => 'Thông tin vị trí dự án',
        'id'      => 'vi-tri-du-an',
        'type'    => 'wysiwyg',
        'options' => array(
            'textarea_rows' => 4,
            'teeny'         => true,
        ),
      ),
      array(
        'type' => 'single_image',
        'name' => 'Hình vị trí dự án *',
        'id'   => 'hinh-vi-tri-du-an',
      ),
      array(
        'name'    => 'Thông tin tiện ích dự án',
        'id'      => 'tien-ich-du-an',
        'type'    => 'wysiwyg',
        'options' => array(
            'textarea_rows' => 4,
            'teeny'         => true,
        ),
      ),
		),
	);

	return $meta_boxes;
}

add_filter( 'rwmb_meta_boxes', 'get_meta_box_duan' );

/* Meta Box About Us Page */
function get_meta_box_aboutus( $meta_boxes ) {
	$prefix = '';

	$meta_boxes[] = array(
		'id' => 'thong-tin-trang-gioi-thieu',
		'title' => esc_html__( 'Thông tin trang Giới Thiệu', 'dazzling' ),
		'post_types' => array( 'page' ),
		'context' => 'advanced',
		'priority' => 'default',
		'autosave' => false,
		'fields' => array(
      array(
        'name'    => 'Giới thiệu chi tiết công ty *',
        'id'      => 'gioi-thieu-chi-tiet',
        'type'    => 'wysiwyg',
        'options' => array(
            'textarea_rows' => 4,
            'teeny'         => true,
        ),
      ),
      array(
        'name'    => 'Giới thiệu quá trình phát triển *',
        'id'      => 'gioi-thieu-qua-trinh-phat-trien',
        'type'    => 'wysiwyg',
        'options' => array(
            'textarea_rows' => 4,
            'teeny'         => true,
        ),
      ),
      array(
        'id'      => 'chi-tiet-qua-trinh-phat-trien',
        'name'    => 'Chi tiết Quá trình phát triển *',
        'type'    => 'text_list',
        'clone'   => true,
        'options' => array(
          'Mốc thời gian'      => 'Mốc thời gian *',
          'Nội dung' => 'Nội dung *',
        ),
      ),
      array(
        'name'    => 'Giới thiệu Ban Lãnh Đạo *',
        'id'      => 'gioi-thieu-ban-lanh-dao',
        'type'    => 'wysiwyg',
        'options' => array(
            'textarea_rows' => 4,
            'teeny'         => true,
        ),
      ),
      array(
        'id'      => 'chi-tiet-ban-lanh-dao',
        'name'    => 'Chi tiết Ban Lãnh Đạo *',
        'type'    => 'text_list',
        'clone'   => true,
        'options' => array(
          'Họ tên'      => 'Họ tên *',
          'Chức danh' => 'Chức danh *',
          'Giới thiệu ngắn' => 'Giới thiệu ngắn',
          'Ảnh đại diện'    => 'Ảnh đại diện',
        ),
      ),
		),
	);

	return $meta_boxes;
}

add_filter( 'rwmb_meta_boxes', 'get_meta_box_aboutus' );