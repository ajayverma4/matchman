<?php /* Template Name: home page*/
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>
<div class="container-fluid">
    <div class="section-1-img">
        <img src="<?php the_field("section_1img"); ?>" alt="">
        
        <div class="section-1-shadow"></div>
    </div>
    <div class="section-2">
        <div class="section-2-bg-img">
            <img src="<?php the_field("section_2_bg_img"); ?>" alt="">

        </div>
        <div class="section-2-content-section">
            <div class="section-2-title">
                <h1><?php the_field("section_2_title"); ?></h1>

            </div>

            <div class="section-2-content">
                <?php the_field("section_2__content"); ?>

            </div>
        </div>

        <div class="section-2-bottom-img">
            <div class="section-2-img">
                <img src="<?php the_field("section_2__img"); ?>" alt="">

            </div>
        </div>

    </div>

    <div class="section-3">
        <div class="section-3-img">
            <img src="<?php the_field("section_3_img"); ?>" alt="">
        </div>

    </div>

    <div class="section-4">
        <div class="section-4-bg-img" style="background-image: url('<?php the_field("section_4_bg_img"); ?>');">


            <div class="container">
                <div class="georetown-box">
                    <div class="row">
                       
                        
                            <div class="row georetown">
                                <div class=" col-md-12 col-lg-6 ">
                                    <div class="section-2-left-img">
                                        <img src="<?php the_field("section_4__left_img_"); ?>" alt="">
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-6   content">
                                    <div class="section-2-right-title">
                                        <?php the_field("section_4_right_title"); ?>
                                    </div>
                                    <div class="section-2-right-content">
                                        <?php the_field("section_4_right_content"); ?>
                                    </div>
                                    <div class="section-2-right-button">
                                        <button><?php the_field("section_4__button"); ?></button>
                                    </div>

                                </div>
                            </div>
                 
                    </div>
                </div>

            </div>
          <div class="container">
              <div class="uvillage-box">
                <div class="row uvillage">
        
                        <div class="row georetown">

                            <div class="col-md-12 col-lg-6  uvillage-content">
                                <div class="section-2-right-title">
                                    <?php the_field("section_4_left_title_"); ?>
                                </div>
                                <div class="section-2-right-content">
                                    <?php the_field("section_4_left_content_"); ?>
                                </div>
                                <div class="section-2-right-button">
                                    <button><?php the_field("section_4__button"); ?></button>
                                </div>

                            </div>
                            <div class="col-md-12 col-lg-6  ">
                                <div class="section-3-right-img">
                                    <img src="<?php the_field("section_4__right_img"); ?>" alt="">
                                </div>
                            </div>
                        </div>

                </div>



            </div>

          </div>
            <div class="section-4-img">
                <img src="<?php the_field("section_4_img_1"); ?>" alt="">

            </div>
        </div>

    </div>


    <div class="bottom-img">

        <img src="<?php the_field("section_4_img_2"); ?>" alt="">


        <img src="<?php the_field("section_4_img_3"); ?>" alt="">

    </div>

</div>

</div>

</div>







<?php endwhile;
                                    endif; ?>
<?php get_footer()?>