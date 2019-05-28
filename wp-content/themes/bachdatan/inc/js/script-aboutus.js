(function($){
    $(document).ready(function () {
        $('.events-wrapper ol li a').click(function(){
            clsName = $(this).attr('data-class');
            $('.content-timeline div').removeClass('selected');
            $('.content-timeline div').hide();
            $('.content-timeline div.'+clsName).show();
            $('.content-timeline div.'+clsName).addClass('selected');
        });
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 4,
            spaceBetween: 40,
            pagination: {
              el: '.swiper-pagination',
              clickable: true,
            },
        });
    })
})(jQuery)