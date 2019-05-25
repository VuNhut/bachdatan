(function($){
    $(document).ready(function () {
        $(".list-product-mobile").on("click", function () {
            if ($(".list-product-mobile").hasClass("clicked")) {
                $("#secondary .widget.widget_product_categories, .top-section .list-catproduct").css("left", "calc(100vw/-1.5)");
                $(".list-product-mobile").removeClass("clicked");
                $(".list-product-mobile button span").removeClass("line-x");
            } else {
                $("#secondary .widget.widget_product_categories, .top-section .list-catproduct").css("left", "0");
                $(".list-product-mobile").addClass("clicked");
                $(".list-product-mobile button span").addClass("line-x");
            }
        })
    })
})(jQuery)