

<?php /* Template Name: our location */
get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>
						<div class="homepage">

						<div class="container-fluid">
							
						 <div class="section-1">
						    <div class="section-1-bg-img">
						           <img src="<?php the_field("section_1_bg_img"); ?>" alt="">
						    </div>
						     <div class="section-1-title">
						           <h2><?php the_field("section_1_title"); ?></h2>
						    </div>
						 </div>
						 </div>

						 <div class="section-2">
						       <div class="section-2-img">
						           <img src="<?php the_field("section_2_bg_img_1"); ?>" alt="">
						    </div>
				           <div class="georetown-section" style="background-image: url('<?php the_field("section_2_bg_img_2"); ?>');">

				            <div class="container">
				                 <div class="georetown-box">
				             <div class="row georetown"  >
						        <div class=" col-md-12 col-lg-6 ">
						             <div class="section-2-left-img">
						                 <img src="<?php the_field("section_2_left_img"); ?>" alt="">
						             </div>
						        </div>
						        <div class=" col-md-12 col-lg-6  content">
						            <div class="section-2-right-title">
						                 <?php the_field("section_2_right_title"); ?>
						             </div>
						             <div class="section-2-right-content">
						                 <?php the_field("section_2_right__content"); ?>
						             </div>
						             <div class="section-2-right-button">
						                 <button><?php the_field("section_2_right_botton"); ?></button>
						             </div>

						        </div>
						    </div>
				           </div>
				            </div>
				           </div>
						 </div>
						</div>

		            <div class="container-fluid">
		                <div class="section-3">
		                     <div class="section-3-img">
						           <img src="<?php the_field("section_3_img_1"); ?>" alt="">
						    </div>

		                    <div class="uvillage-section" style="background-image: url('<?php the_field("section_3_img_2"); ?>');">

				            <div class="container">
				                 <div class="uvillage-box">
				             <div class="row georetown"  >

						        <div class="col-6 uvillage-content">
						            <div class="section-2-right-title">
						                 <?php the_field("section_3_left_title"); ?>
						             </div>
						             <div class="section-2-right-content">
						                 <?php the_field("section_3_left_content"); ?>
						             </div>
						             <div class="section-2-right-button">
						                 <button><?php the_field("section_3_left_button"); ?></button>
						             </div>

						        </div>
		                        <div class="col-6 ">
						             <div class="section-3-right-img">
						                 <img src="<?php the_field("section_3_right_img"); ?>" alt="">
						             </div>
						        </div>
						    </div>

				           </div>
		                   <div class="section-3-img-2">
						           <img src="<?php the_field("section_3_img_3"); ?>" alt="">
						    </div>
                            

		                </div>
                        <div class="bottom-img">
                                 <img src="<?php the_field("section_3_img_4"); ?>" alt="">
                                  <img src="<?php the_field("section_3_img_5"); ?>" alt="">
                            </div>

		            </div>


						            <?php endwhile;
                                    endif; ?>
<?php get_footer()?>