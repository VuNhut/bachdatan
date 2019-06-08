<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package dazzling
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class("page-about-us"); ?>>
    <div class="header-about-us">
        <?php the_content(); ?>
    </div>
    <div class="container">
        <header class="entry-header page-header">
            <h1 class="entry-title"><?php the_title(); ?></h1>
            <div class="line-break"></div>
        </header><!-- .entry-header -->

        <div class="entry-content wow fadeIn">
            <?php $aboutUsDetail = rwmb_meta('gioi-thieu-chi-tiet'); echo $aboutUsDetail; ?>
        </div><!-- .entry-content -->
    </div>
    <div class="box-timeline">
        <h3>Quá trình phát triển</h3>
        <div class="timeline-detail">
            <?php $timeLineDetail = rwmb_meta('gioi-thieu-qua-trinh-phat-trien'); echo $timeLineDetail; ?>
        </div>
        <?php $timeLine = rwmb_meta('chi-tiet-qua-trinh-phat-trien'); ?>
        <div class="container">
            <div class="time-line">
                <div class="cd-horizontal-timeline wow fadeInUp">
                    <div class="timeline">
                        <div class="events-wrapper">
                            <div class="events">
                                <ol>
                                    <?php $idTimeLine = 1; foreach ($timeLine as $value) { ?>
                                    <li><a href="javascript:void(0);" data-date="<?php echo $idTimeLine; ?>/01/2019" class="<?php echo ($idTimeLine==1 ? "selected" : ""); ?>" data-class="blkTimeLine<?php echo $idTimeLine; ?>"><span class="title"><i class="first"></i><?php echo $value[0]; ?><i class="last"></i></span>
                                    </a></li>
                                    <?php $idTimeLine++; } ?>
                                </ol>
                                <span class="filling-line" aria-hidden="true"></span>
                            </div>
                        </div>
                        <ul class="cd-timeline-nav">
                            <li><a href="javascript:void(0);" class="prev inactive">Prev</a></li>
                            <li><a href="javascript:void(0);" class="next">Next</a></li>
                        </ul>
                    </div>
                    <div class="content-timeline">
                        <?php $idTimeLine = 1; foreach ($timeLine as $value) { ?>
                        <div class="blkTimeLine<?php echo $idTimeLine; ?> <?php echo ($idTimeLine==1 ? "selected" : ""); ?>">
                            <span class="tooltiptext"><?php echo $value[1]; ?></span>
                        </div>
                        <?php $idTimeLine++; } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bod">
        <div class="container">
            <div class="row">
                <h2 class="col-sm-12">Ban Lãnh Đạo</h2>
                <div class="line-break"></div>
                <div class="col-sm-12 detail wow fadeIn">
                    <?php $bod = rwmb_meta('gioi-thieu-ban-lanh-dao'); echo $bod; ?>
                </div>
            </div>
            <?php $bodDetail = rwmb_meta('chi-tiet-ban-lanh-dao'); ?>
            <div class="swiper-container">
				<div class="swiper-wrapper wow fadeInUp">
                    <?php foreach ($bodDetail as $value) { ?>
					<div class="swiper-slide">
                        <div class="img">
                            <?php if($value[3]) : ?>
                            <img src="<?php echo $value[3] ?>" alt="">
                            <?php else : ?>
                            <img src="<?php echo home_url() ?>/wp-content/themes/bachdatan/images/img-bod.jpg" alt="">
                            <?php endif; ?>
                        </div>
                        <div class="info-bod">
                            <p class="name-bod"><?php echo $value[0] ?></p>
                            <p class="pos-bod"><?php echo $value[1] ?></p>
                            <p class="detail-bod"><?php echo $value[2] ?></p>
                        </div>
                    </div>
                    <?php } ?>
				</div>
			</div>
        </div>
    </div>
</article><!-- #post-## -->
