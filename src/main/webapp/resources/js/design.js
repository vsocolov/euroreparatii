(function ($) {
    "use strict";

    var design = {
        navSelector: 'li#navbar-design a',
        allNavSelector: '.navbar-nav li',
        gallerySelector: '.image-gallery-container',

        init: function () {
            $(design.gallerySelector).on("click", design.clickGalleryEvent);
            design.selectNavigationCategory();
        },

        selectNavigationCategory: function () {
            $(design.allNavSelector).removeClass('active');
            $(design.navSelector).addClass('active');
        },

        clickGalleryEvent: function (event) {
            event = event || window.event;
            var target = event.target || event.srcElement,
                link = target.src ? target.parentNode : target,
                options = {index: link, event: event},
                links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        }
    };

    $.fn.ready(function () {
        design.init();
    });

})(jQuery);