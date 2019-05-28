(function($){
    $(document).ready(function () {
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