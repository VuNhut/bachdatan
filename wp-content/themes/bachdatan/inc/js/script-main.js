(function($){
    $(document).ready(function () {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 5,
            spaceBetween: 30,
            pagination: {
              el: '.swiper-pagination',
              clickable: true,
            },
        });
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
    })
})(jQuery)