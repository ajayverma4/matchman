<?php /* Template Name: Name page */
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>



<div class="container">
<div class="Name-page">
    <div class="name-heading">
        <h1><?php the_field("name_heading"); ?></h1>
    </div>
    <div class="name-box">
        <label class="sc-b9e168da-1 fAChlv"><input placeholder="First name" autocomplete="given-name"
                class="sc-b9e168da-2 eLyoiW" type="text" value="" name="name"></label>
    </div>

    <div class="continue-button">
        <div class="name-continue">
            <a href="./how-fit"><?php the_field("name_box_continue"); ?></a>
        </div>
    </div>

</div>
</div>

<?php endwhile;
            endif; ?>
<?php get_footer()?>