(function ($) {
    "use strict";

    var designProject = {
        navSelector: 'li#navbar-design-project a',
        allNavSelector: '.navbar-nav li',
        resultContainerSelector: '.result',

        init: function () {
            designProject.selectNavigationCategory();

            $(designProject.resultContainerSelector).slick({
                infinite: false,
                dots: false,
                slidesToScroll: 1,
                variableWidth: true,
                slidesToShow: 1,
                centerMode: true,
                autoplay: false,
                adaptiveHeight: true
            });
        },

        selectNavigationCategory: function() {
            $(designProject.allNavSelector).removeClass('active');
            $(designProject.navSelector).addClass('active');
        }
    };

    $.fn.ready(function () {
        designProject.init();
    });

})(jQuery);