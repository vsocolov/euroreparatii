(function ($) {
    "use strict";

    var contacts = {
        navSelector: 'li#navbar-contacts a',
        allNavSelector: '.navbar-nav li',
        resultContainerSelector: '.result',
        imageSliderContainerClass: '.image-slider',
        mapSelector: 'location-map',

        init: function () {
            contacts.selectNavigationCategory();
            contacts.setUpSlider();
            contacts.initMap();
        },

        selectNavigationCategory: function() {
            $(contacts.allNavSelector).removeClass('active');
            $(contacts.navSelector).addClass('active');
        },

        setUpSlider: function () {
            $(contacts.imageSliderContainerClass).slick({
                dots: false,
                autoplay: true,
                fade: true,
                autoplaySpeed: 4000
            });
        },

        initMap: function() {
            var latLng = {lat: 47.059402, lng: 28.873105};

            var map = new google.maps.Map(document.getElementById(contacts.mapSelector), {
                zoom: 17,
                center: latLng
            });

            new google.maps.Marker({
                position: latLng,
                map: map
            });
        }

    };

    $.fn.ready(function () {
        contacts.init();
    });

})(jQuery);