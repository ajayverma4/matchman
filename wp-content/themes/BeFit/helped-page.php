<?php /* Template Name: helped-page */
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>


<div class="container">
    
<div class="helped-page">
    <div class="name-heading">
        <h1><?php the_field("helped_page_tittle"); ?></h1>
    </div>
    <div class="helped-img">
        <img src="<?php the_field("helped_page_img"); ?>" alt="">
    </div>
    <div class="helped-content">
        <?php the_field("helped_page_content"); ?>
    </div>
    <div class="helped-continue-button">
        <div class="name-continue">
            <a href="./ai-page"><?php the_field("helped_page_button"); ?></a>
        </div>
    </div>
</div>
</div>

<?php endwhile;
            endif; ?>
<?php get_footer()?>