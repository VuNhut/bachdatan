(function($){
    $(document).ready(function () {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 5,
            spaceBetween: 30,
            pagination: {
              el: '.swiper-pagination',
              clickable: true,
            },
            breakpoints: {
                992: {
                    slidesPerView: 3,
                },
                576: {
                    slidesPerView: 2,
                },
            },
        });
        headerMobile();
        $(window).on('scroll', function () {
            headerMobile();
            if ($(window).scrollTop() > ($(".why-us").position().top) - $(".why-us").height()*2) {
                $('.count').each(function () {
                    $(this).prop('Counter', 0).animate({
                            Counter: $(this).data('value')
                        }, {
                        duration: 3000,
                        easing: 'swing',
                        step: function (now) {                      
                            $(this).text(Math.ceil(now) + "+");
                        }
                    });
                });
            }
        });
        function headerMobile() {
            if($(window).scrollTop() > 0) {
                $(".header").addClass("header-mobile");
            } else {
                $(".header").removeClass("header-mobile");
            }
        }
    })
})(jQuery)