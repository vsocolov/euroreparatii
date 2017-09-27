(function ($) {
    "use strict";

    var index = {
        imageSliderContainerClass: '.image-slider',

        init: function () {
            $(index.imageSliderContainerClass).slick({
                infinite: true,
                dots: true,
                slidesToScroll: 1,
                variableWidth: true,
                slidesToShow: 1,
                centerMode: true,
                autoplay: true,
                autoplaySpeed: 4000
            });
        }
    };

    $.fn.ready(function () {
        index.init();
    });

})(jQuery);
