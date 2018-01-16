jQuery(window).load(function () { jQuery('body').scrollspy({ offset: 100, target: '.navigation' }); });
jQuery(window).load(function () { jQuery('body').scrollspy('refresh'); });
jQuery(window).resize(function () { jQuery('body').scrollspy('refresh'); });

jQuery(window).load(function () {
    if (location.hash != '') {
        var hash = '#' + window.location.hash.substr(1);
        if (hash.length) {
            jQuery('html,body').delay(0).animate({
                scrollTop: jQuery(hash).offset().top - 44 + 'px'
            }, {
                duration: 1200,
                easing: "easeInOutExpo"
            });
        }
    }

    $("#status").fadeOut();
    $("#preloader").delay(200).fadeOut(200);
});

$(document).on('click', ".carousel-inner a[rel^='prettyPhoto']", function (e) {
    e.preventDefault();
    $(this).prettyPhoto({ animation_speed: 'normal', slideshow: 3000, autoplay_slideshow: false, theme: 'dark_square', deeplinking: false });
});

$(document).on('click', 'a[href^=#]:not([data-toggle="tab"],[data-toggle="collapse"],.carousel-control)', function () {
    var linkItem = $($(this).attr('href'));
    if (linkItem.length > 0) {
        $('html, body').animate({
            scrollTop: linkItem.offset().top - 43
        }, {
            duration: 1000,
            easing: 'easeInOutExpo'
        });
    }
    return false;
});

$('[data-toggle="tooltip"]').tooltip();