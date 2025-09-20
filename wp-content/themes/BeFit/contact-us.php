<?php /* Template Name: contact us*/
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>
<div class="container-fluid">

    <div class="section-1">

        <div class="section-1-img">
            <img src="<?php the_field("section_1_bg_img"); ?>" alt="">
        </div>

        <div class="section-1-titles">
            <h1> <?php the_field("section_1_title"); ?></h1>
        </div>
<div class="section-1-shadow"></div>
    </div>

    <div class="bg-img" style="background-image: url('<?php the_field("section_1_bg_img_2"); ?>');">
        <div class="section-2">

            <div class="container padding-top ">


                <div class="row">
                    
                        <div class="white-box">
                            <div class="row ">
                                <div class="col-sm-12 col-md-12  col-lg-6 content-sections">

                                    <div class="section-2-title">
                                        <h2> <?php the_field("section_2_title_1"); ?></h2>
                                    </div>

                                    <div class="section-2-contents">
                                        <?php the_field("section_2_content_1"); ?>
                                    </div>
                                    <div class="section-2-buttons">
                                        <button> <?php the_field("section_2_button_1"); ?></button>
                                    </div>
                                </div>
                                <div class= "col-sm-12 col-md-12  col-lg-6 ">
                                    <div class="section-2-title">
                                        <h2> <?php the_field("section_2_title_2"); ?></h2>
                                    </div>

                                    <div class="comment-section">
                                        <form class="comment-box" action="#" method="post">
                                            <textarea name="comment" placeholder=""></textarea>
                                            <br>
                                            <div class="sumit">
                                                <input type="submit" value="SUBMIT">
                                            </div>
                                        </form>
                                    </div>


                                </div>

                                <div class="col-sm-12 col-md-12  col-lg-6  content-sections">
                                    <div class="section-2-titles">
                                        <h2> <?php the_field("section_2_title_3"); ?></h2>
                                    </div>

                                    <div class="section-2-contents">
                                        <?php the_field("section_2_content_3"); ?>
                                    </div>

                                    <div class="section-2-buttons">

                                        <button> <?php the_field("section_2_button_3"); ?></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                   

                </div>
            </div>

        </div>


        <div class="section-3">

            <div class="section-3-img-1">
                <img src="<?php the_field("section_3_img_1"); ?>" alt="">
            </div>


        </div>







    </div>

    <div class="bottom-img">

        <img src="<?php the_field("section_3_img_2"); ?>" alt="">


        <img src="<?php the_field("section_3_img_3"); ?>" alt="">

    </div>



</div>
<?php endwhile;
        endif; ?>
<?php get_footer()?>








