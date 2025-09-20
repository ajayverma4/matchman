<?php /* Template Name: Start Now page */
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>



<div class="start-now">
    <div class="container">
        <div class="start-now-heading">
        <h1><?php the_field("start_now_heading"); ?></h1>
        </div>
        <div class="start-now-tittle">
       <h2> <?php the_field("start_now_tittle"); ?></h2>
</div>
<div class="start-now-img">
<a href="./name"> <img src="<?php the_field("start_now_img"); ?>" alt=""> </a>
<?php the_field("start_now_male"); ?>

</div>
<div class="start-now-bottom">
<?php the_field("start_now_bottom"); ?>
</div>


    </div>
    
</div>

    <?php endwhile;
            endif; ?>
    <?php get_footer()?>