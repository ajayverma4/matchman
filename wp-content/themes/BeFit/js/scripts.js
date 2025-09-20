jQuery(document).ready(function() {


    if (jQuery("#back-to-top").length) {
        var scrollTrigger = 100, // px
            backToTop = function() {
                var scrollTop = jQuery(window).scrollTop();
                if (scrollTop > scrollTrigger) {
                    jQuery("#back-to-top").addClass("show");
                } else {
                    jQuery("#back-to-top").removeClass("show");
                }
            };
        backToTop();
        jQuery(window).on("scroll", function() {
            backToTop();
        });
        jQuery("#back-to-top").on("click", function(e) {
            e.preventDefault();
            jQuery("html,body").animate({
                    scrollTop: 0,
                },
                700
            );
        });
    }

    if (jQuery("header").length) {
        var scrollTrigger = 100, // px
            activeTop = function() {
                var scrollTop = jQuery(window).scrollTop();
                if (scrollTop > scrollTrigger) {
                    jQuery("header").addClass("active");
                } else {
                    jQuery("header").removeClass("active");
                }
            };
        activeTop();
        jQuery(window).on("scroll", function() {
            activeTop();
        });
    }

    jQuery(".autoplay").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: false,
        autoplay: false,
        infinite: true,
        arrows: false,
        autoplaySpeed: 2000,
        responsive: [{
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    infinite: true,
                },
            },

            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    infinite: true,
                },
            },
        ],
    });

    jQuery(".autoplay-advisor").slick({
        dots: false,
        autoplay: true,
        infinite: true,
        speed: 300,
        slidesToShow: 5,
        slidesToScroll: 5,
        responsive: [{
                breakpoint: 768,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                },
            },

            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                },
            },
        ],
    }); 
    // jQuery('.autoplay').slick({
    //     slidesToShow: 3,
    //     slidesToScroll: 1,
    //     autoplay: true,
    //     au
});
