(function ($) {
    "use strict";

    var gallery = {
        navSelector: 'li#navbar-gallery a',
        allNavSelector: '.navbar-nav li',
        gallerySelector: '.image-gallery-container',

        init: function () {
            gallery.selectNavigationCategory();
            $(gallery.gallerySelector).on("click", gallery.clickGalleryEvent);
        },

        selectNavigationCategory: function () {
            $(gallery.allNavSelector).removeClass('active');
            $(gallery.navSelector).addClass('active');
        },

        clickGalleryEvent: function(event) {
            event = event || window.event;
            var target = event.target || event.srcElement,
                link = target.src ? target.parentNode : target,
                options = {index: link, event: event},
                links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        }
    };

    $.fn.ready(function () {
        gallery.init();
    });

})(jQuery);