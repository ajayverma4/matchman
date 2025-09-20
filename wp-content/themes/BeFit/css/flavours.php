<?php /* Template Name: flavours*/
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>


<div class="bg-color">

    <div class="container-fluid">

        <div class="section-1-img">
            <img src="<?php the_field("section1__img"); ?>" alt="">
        </div>

        <div class="section-1-top-title ">
            <?php the_field("section1__top_title"); ?>
        </div>


        <div class="container">
            <div class="row">
              

                <div class="col-12">
                    <div class="row step-1-2">
                        <div class="col-md-6 col-lg-6 ">
                            <div class="section-1">
                                <div class="step-1">
                                    <div class="step-1-title">
                                        <div class="step-1-title-1">
                                            <h1> <?php the_field("section_1_title_1"); ?></h1>
                                        </div>
                                        <div class="step-1-title-2">
                                            <h2><?php the_field("section_1_title_2"); ?></h2>
                                        </div>


                                        <div class="row step-3-card">
                                            <!-- Column 1 -->
                                            <div class="col-6 margin-left">
                                                <div class="step-1-content">
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_1"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_2"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_3"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_4"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_5"); ?>
                                                    </div>

                                                </div>
                                            </div>

                                            <!-- Column 2 -->
                                            <div class="col-6 margin-right">
                                                <div class="step-1-content">

                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_6"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_7"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_8"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_9"); ?>
                                                    </div>
                                                    <div class="step-1-content-1">
                                                        <?php the_field("section_1_content_10"); ?>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="section-2">
                                <div class="step-2">
                                    <div class="step-2-title">
                                        <div class="step-2-title-1">
                                            <h1> <?php the_field("section_2_title_1"); ?></h1>
                                        </div>
                                        <div class="step-2-title-2">
                                            <h2><?php the_field("section_2_title_2"); ?></h2>
                                        </div>


                                        <div class="row step-2-card">
                                            <!-- Column 1 -->
                                            <div class="col-12">
                                                <div class="step-2-content">
                                                    <div class="step-2-content-1">
                                                        <?php the_field("section_2_content_1"); ?>
                                                    </div>
                                                    <div class="step-2-content-1">
                                                        <?php the_field("section_2_content_2"); ?>
                                                    </div>
                                                    <div class="step-2-content-1">
                                                        <?php the_field("section_2_content_3"); ?>
                                                    </div>
                                                    <div class="step-2-content-1">
                                                        <?php the_field("section_2_content_4"); ?>
                                                    </div>
                                                    <div class="step-2-content-1">
                                                        <?php the_field("section_2_content_5"); ?>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>



            <div class="section-3">
                <div class="row">
                  
                    <div class="col-12">
                        <div class="step-4">
                            <div class="step-3-title">
                                <div class="step-3-title-1">
                                    <h1> <?php the_field("section_3_title_1"); ?></h1>
                                </div>
                                <div class="step-3-title-2">
                                    <h2><?php the_field("section_3_title_2"); ?></h2>
                                </div>



                            </div>
                          
                                <div class="row step-3-cards">

                                    <!-- Column 1 -->
                                    <div class="col-sm-6 col-lg-4 left-line">
                                        <div class="step-3-content">
                                            <div class="step-3-contents-1">
                                                <?php the_field("section_3_content_1"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_2"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_3"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_4"); ?>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Column 2 -->
                                    <div class="col-sm-6 col-lg-4 left-line">
                                        <div class="step-3-content">
                                            <div class="step-3-contents-1">
                                                <?php the_field("section_3_content_5"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_6"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_7"); ?>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Column 3 -->
                                    <div class="col-md-12 col-lg-4  left-line">
                                        <div class="step-3-content">
                                            <div class="step-3-contents-1">
                                                <?php the_field("section_3_content_8"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_9"); ?>
                                            </div>
                                            <div class="step-3-content-1">
                                                <?php the_field("section_3_content_10"); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           



                        </div>
                    </div>
                </div>



            </div>
            <div class="section-4">

                <div class="row">
             
                    <div class="col-12">
                        <div class="step-4">
                            <div class="step-4-title">
                                <div class="step-4-title-1">
                                    <h1> <?php the_field("section_4_title_1"); ?></h1>
                                </div>
                                <div class="step-4-title-2">
                                    <h2><?php the_field("section_4_title_2"); ?></h2>
                                </div>



                            </div>
                            <div class="row ">
                                <div class="col-1"></div>
                                <div class="col-10">
                                    <div class="row step-4-card">
                                        <div class="col-6">
                                            <div class="step-4-content">
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_1"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_2"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_3"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_4"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_5"); ?>

                                                </div>


                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="step-4-content">
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_6"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_7"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_8"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_9"); ?>

                                                </div>
                                                <div class="step-4-content-1">
                                                    <?php the_field("section_4_content_10"); ?>

                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>






            </div>
        </div>

        <div class="section-4-left-img">
            <img src="<?php the_field("section_4_left_img"); ?>" alt="">

        </div>



        <div class="section-4-right-img">

            <img src="<?php the_field("section_4_right_img_"); ?>" alt="">
        </div>

    </div>



    <div class="section-5">
        <div class="bottom-img">

            <img src="<?php the_field("section_5_img_1"); ?>" alt="">


            <img src="<?php the_field("section_5_img_2"); ?>" alt="">

        </div>
    </div>

</div>





<?php endwhile;
        endif; ?>
<?php get_footer()?>