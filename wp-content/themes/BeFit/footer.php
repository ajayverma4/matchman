<!-- footer -->
<?php wp_footer(); ?>
<footer style="background-image: url('<?php the_field("footer_img",'option'); ?>');">
    
                <?php
                $defaults = array(
                    'menu' => 'footer menu',
                    'menu_class' => 'nav navbar-nav'
                );
                wp_nav_menu($defaults);
                ?>
            

                <div class="socia-site-heading" ><?php the_field("social_media_heading", "options"); ?></div>
                <div class="socia-site-icons row">
                    <?php $Case = get_field('social_media_repeater', "options");
                    if (is_array($Case)) {
                        foreach ($Case as $Case_list) {
                    ?>
                            <div class="social-icon-app">
                                <a target="_blank" href="<?php echo $Case_list['social_media_repeater_link']; ?>">
                                    <?php echo $Case_list['social_media_repeater_icons']; ?>
                                </a>
                            </div>
                    <?php
                        }
                    }
                    ?>
               
</footer>


    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
  AOS.init();
</script>


</body>

</html>