// Activates Stellar.js jQuery Plugin - Plugin does not initialize on mobile devices listed below

var isMobile = {
    Android: function() {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i);
    },
    any: function() {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};

jQuery(document).ready(function() {
    if (!isMobile.any()) {
        $(window).stellar({
            horizontalScrolling: false,
            verticalScrolling: true,
            verticalOffset: 0,
            horizontalOffset: 0
        });
    }
});

// Activates the Bootstrap Carousel for the Intro Header Options

$('.carousel').carousel({
    interval: 8000,
    pause: "false",
})

// Activates Owl.js jQuery Sliders

$(document).ready(function() {

    $("#about-1-carousel, #services-1-carousel").owlCarousel({

        items: 4,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3]

    });

    $("#about-3-carousel").owlCarousel({

        items: 1,
        itemsDesktop: [1199, 1],
        itemsDesktopSmall: [979, 3]

    });

    $("#clients-carousel").owlCarousel({

        items: 5,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3]

    });

    $("#portfolio-2-carousel").owlCarousel({

        singleItem: true,
        navigation: true,
        navigationText: [
            "<i class='fa fa-chevron-left'></i>",
            "<i class='fa fa-chevron-right'></i>"
        ],
        slideSpeed: 400

    });

    $("#project-details-carousel").owlCarousel({

        navigation: true,
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true,
        navigationText: [
            "<i class='fa fa-angle-left'></i> Prev",
            "Next <i class='fa fa-angle-right'></i>"
        ],

    });

});

// Activates FitVids jQuery Plugin
$(".container").fitVids();

// Activates Magnific Popup jQuery Plugin
$('.gallery-item').magnificPopup({
    type: 'image',
    gallery: {
        enabled: true
    }
});

$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
    type: 'iframe',
});

// Activates Smooth Scrolling
$(function() {
    $.srSmoothscroll();
});

// Floating label Headings for the Contact Form
$(function() {
    $("body").on("input propertychange", ".floating-label-form-group", function(e) {
        $(this).toggleClass("floating-label-form-group-with-value", !! $(e.target).val());
    }).on("focus", ".floating-label-form-group", function() {
        $(this).addClass("floating-label-form-group-with-focus");
    }).on("blur", ".floating-label-form-group", function() {
        $(this).removeClass("floating-label-form-group-with-focus");
    });
});

// Isotope Plugin for Portfolio Filtering

$(window).load(function() {
    // init Isotope
    var $container = $('.isotope').isotope({
        itemSelector: '.portfolio-item'
    });
    $('#filters').on('click', 'button', function() {
        var filterValue = $(this).attr('data-filter');
        $container.isotope({
            filter: filterValue
        });
    });
    // change is-checked class on buttons
    $('#filters').each(function(i, buttonGroup) {
        var $buttonGroup = $(buttonGroup);
        $buttonGroup.on('click', 'button', function() {
            $buttonGroup.find('.active').removeClass('active');
            $(this).addClass('active');
        });
    });
});