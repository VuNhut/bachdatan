(function($){
    $(document).ready(function () {
        new WOW().init();
        headerMobile();
        $(window).on('scroll', function () {
            headerMobile();
        });
        function headerMobile() {
            if($(window).scrollTop() > 0) {
                $(".header").addClass("header-mobile");
            } else {
                $(".header").removeClass("header-mobile");
            }
        }
        if($(window).width() < 992) {
            $(".header #menu-main-menu").css("height", $(window).height() - $("#logo").height() + 25);
            $(".top-section").css("padding-top", $("#logo").height());
        };
        var showItem = 1;
        $(".gallery-thumbs").each(function(i, e){
            var thumbs = ".gallery-thumbs";
            var gallery = ".gallery-top";
            var nextBtn = ".gallery-top .swiper-button-next";
            var prevBtn = ".gallery-top .swiper-button-prev";
            var galleryTop = new Swiper(gallery, {
                spaceBetween: 10,
                navigation: {
                    nextEl: nextBtn,
                    prevEl: prevBtn,
                },
                thumbs: {
                    swiper: {
                        el: thumbs,
                        spaceBetween: 10,
                        slidesPerView: 4,
                    }
                }
            });
            var galleryThumbs = new Swiper(thumbs, {
                spaceBetween: 10,
                slidesPerView: 5,
            });
            var thumbsItem = thumbs + " .swiper-slide";
            $(thumbsItem).each(function(i, e){
                var numberItem = $(thumbsItem).length;
                $(e).on("click", function () {
                    var clickItem = i+1;
                    var groupItem = 5;
                    if ((clickItem > showItem) && (clickItem >= groupItem)) {
                        if (clickItem < numberItem) {
                            galleryThumbs.slideNext(400);
                        }
                    } else {
                        if (clickItem >= groupItem) {
                            galleryThumbs.slidePrev(400);
                        } else {
                            galleryThumbs.setTranslate(0);
                        }
                    }
                    showItem = clickItem;
                })
            });
        });
    })
})(jQuery)