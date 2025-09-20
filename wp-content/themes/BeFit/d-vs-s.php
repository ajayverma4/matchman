<?php /* Template Name: Deadlift vs. Squat page */
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>


<div class="container">

    <div class="sectiom-1">
        <div class="d-vs-s-tittle">
            <h1><?php the_field("deadlift_vs_squat_heading");?></h1>
        </div>
        <div class="d-vs-s-content-1">
            <?php the_field("section_1_d_vs_s_content_1");?>
        </div>
        <div class="d-vs-s-content-2">
            <?php the_field("section_1_d_vs_s_content_2");?>
        </div>
        <div class="d-vs-s-content-3">
            <?php the_field("section_1_d_vs_s_content_3");?>
        </div>
        <div class="d-vs-s-button">
            <a href=""></a> <?php the_field("section_1_d_vs_s_button");?>
        </div>

        <div class="d-vs-s-video">
            <?php the_field("section_1_d_vs_s_video");?>
        </div>

    </div>
    <div class="section-1">
        <div class="explanation">
            <?php if (have_rows('secrion_2_repeater')) : ?>
            <?php while (have_rows('secrion_2_repeater')) : the_row(); ?>
            <div class="secrion_2_repeater_details">
                <div class="secrion_2_repeater_tittle">
                    <h3><?php the_sub_field("secrion_2_repeater_titttle");?> </h3>
                </div>
                <div class="secrion_2_repeater_content">
                    <?php the_sub_field("secrion_2_repeater_content");?>

                </div>
            </div>
            <?php endwhile; ?>
            <?php endif; ?>

        </div>
    </div>

     <div class="section-3">
        <div class="d-vs-s-box">
            <?php if (have_rows('section_3_repeater_')) : ?>
            <?php while (have_rows('section_3_repeater_')) : the_row(); ?>
            <div class="section_3_repeater_details">
                <div class="section_3_repeater_tittle">
                    <h3><?php the_sub_field("section_3_repeater_tittle");?> </h3>
                </div>
                <div class="section_3_repeater_content_1">
                    <?php the_sub_field("section_3_repeater_content_1");?>

                </div>
                 <div class="section_3_repeater_content_2">
                    <?php the_sub_field("section_3_repeater_content_2");?>

                </div>
                  <div class="section_3_repeater_content_3">
                    <?php the_sub_field("section_3_repeater_content_3");?>

                </div>
                

            </div>
            <?php endwhile; ?>
            <?php endif; ?>

        </div>
    </div>
</div>


</div>

<?php endwhile;
            endif; ?>
<?php get_footer()?>