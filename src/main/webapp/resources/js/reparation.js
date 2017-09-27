(function($) {
    "use strict";

    var reparation = {
        navSelector: 'li#navbar-reparation a',
        allNavSelector: '.navbar-nav li',
        gallerySelector: '.image-gallery-container',
        mapSelector: 'location-map',

        init: function() {
            $(reparation.gallerySelector).on("click", reparation.clickGalleryEvent);
            reparation.selectNavigationCategory();
            reparation.initMap();
        },

        initMap: function() {
            var latLng = {lat: 47.059402, lng: 28.873105};

            var map = new google.maps.Map(document.getElementById(reparation.mapSelector), {
                zoom: 17,
                center: latLng,
                scrollwheel: false,
                navigationControl: false,
                mapTypeControl: false,
                scaleControl: false
            });

            new google.maps.Marker({
                position: latLng,
                map: map
            });
        },

        clickGalleryEvent: function(event) {
            event = event || window.event;
            var target = event.target || event.srcElement,
                link = target.src ? target.parentNode : target,
                options = {index: link, event: event},
                links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        },

        selectNavigationCategory: function() {
            $(reparation.allNavSelector).removeClass('active');
            $(reparation.navSelector).addClass('active');
        }
    };

    $.fn.ready(function() {
        reparation.init();
    });

})(jQuery);