<!doctype html>
<html <?php language_attributes(); ?> class="no-js">

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <title><?php wp_title(''); ?><?php if (wp_title('', false)) {
            echo ' :';
        } ?> <?php bloginfo('name'); ?></title>

    <link href="//www.google-analytics.com" rel="dns-prefetch">
    <link rel="shortcut icon" href="<?php echo $logo_image = get_field('favicon_ico', 'option'); ?>">
    <link rel="shortcut icon" href="<?php echo $logo_image = get_field('favicon_png', 'option'); ?>">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta name="description" content="<?php bloginfo('description'); ?>">
    <meta name="theme-color" content="#db6237">
    <meta name="format-detection" content="telephone=no">

    <script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/wow.min.js"></script>
    <script>
    new WOW().init({
        mobile: false
    });
    </script>
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/slick.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/slick-theme.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/style.css?v=1" />

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i&display=swap"
        rel="stylesheet">

    <?php wp_head(); ?>

    <style>
    <?php echo get_field('css_text_area', 'option');
    ?>
    </style>
</head>

<body <?php body_class(); ?>>
    <!-- <a id="back-to-top" class="" href="#"><i class="fa fa-angle-up"></i></a>
    <header>



        <div class="navbar">
            <div class="nav-item"><a href="<?php echo home_url('/home-page-2'); ?>">HOME</a></div>
            <div class="nav-item"><a href="<?php echo home_url('/locations'); ?>">LOCATIONS</a></div>
            <div class="nav-item"><a href="<?php echo home_url('/locations'); ?>">About Us</a></div>
            <div class="nav-center">
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php the_field("header_logo", "options"); ?>" alt="" />
                </a>
            </div>
            <div class="nav-item"><a href="<?php echo home_url('/flavors'); ?>">FLAVORS</a></div>
            <div class="nav-item"><a href="<?php echo home_url('/contact'); ?>">CONTACT US</a></div>
        </div> -->






    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="header-logo d-lg-none d-block">
            <a href="<?php echo home_url(); ?>">
                <img src="<?php the_field("header_logo", "options"); ?>" alt="" />
            </a>
        </div>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <div class="row d-lg-flex d-none">
                <div class=" col-md-5">
                    <?php
                                    $defaults = array(
                                        'menu' => 'header menu left',
                                        'menu_class' => 'nav navbar-nav',
                                    );
                                    wp_nav_menu($defaults);
                                ?>
                </div>

                <div class="col-md-2">
                    <a href="<?php echo home_url(); ?>">
                        <img src="<?php the_field("header_logo", "options"); ?>" alt="" />
                    </a>


                </div>
                <div class=" col-md-5">
                    <?php
                                    $defaults = array(
                                        'menu' => 'header menu right',
                                        'menu_class' => 'nav navbar-nav',
                                    );
                                    wp_nav_menu($defaults);
                                ?>


                </div>
            </div>

            <div class="d-lg-none d-block">
                <?php
                                    $defaults = array(
                                        'menu' => 'header menu left',
                                        'menu_class' => 'nav navbar-nav',
                                    );
                                    wp_nav_menu($defaults);
                                ?>
            </div>
        </div>
    </nav>
    </header>

    <?php if (is_home() || is_front_page()) {

} else {

    $header_banner = get_field('header_banner');
    if ($header_banner == "" || $header_banner == null || $header_banner == false) {
        $header_banner = get_field('sub_header_image', "option");
    }
    ?>
    <div class="header-banner" style="background-image: url(<?php echo $header_banner; ?>)">
        <div class="banner-heading">
            <h1><?php the_field('header_title'); ?></h1>
        </div>
    </div>
    <?php } ?>