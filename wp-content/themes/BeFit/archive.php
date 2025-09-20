<?php
get_header("white"); ?>

<main role="main">

    <!-- section -->





    <div class="container">


        <div class="blog-listing-title">
            <h1>
                <?php the_field("blog_listing_title",'option'); ?></h1>

            <p>
                <?php the_field("section_1_perspectives",'option'); ?></p>
        </div>

        <div class="row">


            <div class="col-md-6 blog-header-section">
                <?php
                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                    $args  = [
                        'post_type'      => 'blog',
                        'order'          => 'ASC',
                        //'orderby' => 'ID',
                        'posts_per_page' => 1,
                        'paged'          => $paged,
                    ];
                    $query = new WP_Query($args);
                    while ($query->have_posts()) {
                        $query->the_post(); 
                        $termsArray = get_the_terms($post->ID, 'blog-category');
                        $termsSLug  = "";
                        if (is_array($termsArray) || is_object($termsArray)) {
                            foreach ($termsArray as $term) {
                                $termsSLug .= $term->slug . ' ';
                            }
                        }
                    ?>
                <article>
                    <div class="card blog-header-section-right">
                        <div class="card-image blog-header-section-image">
                            <a href="<?php the_permalink()?>">
                                <?php the_post_thumbnail()?>
                            </a>
                        </div>
                        <div class="card-body blog-section-card-body blog-header-section- left-content">
                            <div class="feature-botton">
                                <a href="">Featured</a>
                            </div>

                            <a href="<?php the_permalink()?>">

                                <h2 class=" blog-section-right-title"><?php the_title()?></h2>
                            </a>
                            <div class="date">
                                <?php echo get_the_date(); ?>
                            </div>
                        </div>
                    </div>
                </article>
                <?php ?>
                <?php }
 
       wp_reset_postdata();
            ?>

    </div>
            <div class="col-6">
                <div class="blog-header-section ">
                    <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args  = [
                            'post_type'      => 'blog',
                            'order'          => 'DESC',
                            //'orderby' => 'ID',
                            'posts_per_page' => 3,
                            'paged'          => $paged,
                        ];
                        $query = new WP_Query($args);
                        while ($query->have_posts()) {
                            $query->the_post();
                            $termsArray = get_the_terms($post->ID, 'blog-category');
                            $termsSLug  = "";
                            if (is_array($termsArray) || is_object($termsArray)) {
                                foreach ($termsArray as $term) {
                                    $termsSLug .= $term->slug . ' ';
                                }
                            }
                        ?>
                    <article class="left-border">

                        <div class="row blog-header-section-right">

                            <div class=" col-4 card-image blog-header-section-image">
                                <a href="<?php the_permalink()?>">
                                    <?php the_post_thumbnail()?>
                                </a>

                            </div>
                            <div class=" col-8 card-body blog-section-card-body blog-header-section-content">
                                <a href="<?php the_permalink()?>">
                                    <h2 class="blog-section-left-title"><?php the_title()?></h2>
                                </a>
                                <p class="blog-section-left-content">
                                    <?php echo wp_trim_words(get_the_content(), 10, ''); ?></p>


                                <div class="author-date">
                                    <div class="post-author">
                                        <div class="author-avatar">
                                            <?php echo get_avatar(get_the_author_meta('ID'), 64); ?>
                                        </div>
                                        <div class="author-name">
                                            <p> <?php the_author_posts_link(); ?></p>
                                        </div>

                                    </div>
                                    <div class="blog-listing-img">

                                        <img src="<?php the_field("celender_img", 'option'); ?>" alt="">

                                        <?php echo get_the_date(); ?>
                                    </div>
                                </div>
                                <div class="learn-more-seen">

                                    <a class="learn-more-button" href="<?php the_permalink(); ?>">Learn More</a>

                                    <div class="last-img">
                                        <img src="<?php the_field("timer_img", 'option'); ?>" alt="">
                                        <?php
                                        $last_seen = get_post_meta(get_the_ID(), 'last_seen_time', true);
                                            if ($last_seen) {
                                                echo '<p>Last seen: ' . date('F j, Y, g:i a', strtotime($last_seen)) . '</p>';
                                            } else {
                                                echo '<p>3mins read</p>';
                                            }
                                        ?>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </article>
                    <?php ?>
                    <?php }
                     wp_reset_postdata();
                        ?>
                </div>
            </div>
        </div>




        <div class="container job-categories-section">
            <div class="section-2-img">

                <img src="<?php the_field("popular_articles_bg_img_1", 'option'); ?>" alt="">
                <p>
                    <?php the_field("popular_articles_content_1", 'option'); ?>
                </p>
            </div>

            <div class="row blog-listing-latest-list">
                <div class="col-md-12 blog-listing-table">
                    <span class="blog-listing-table-title">Explore more:</span>
                    <?php
                        $terms = get_terms([
                            'taxonomy'   => 'blog-category',
                            'hide_empty' => true,
                        ]);
                        if (!empty($terms) && !is_wp_error($terms)) :
                    ?>
                    <div class="blog-listing-list-navs">
                        <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                            <?php foreach ($terms as $index => $term): ?>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link <?php if ($index == 0) echo 'active'; ?>"
                                    id="<?php echo esc_attr($term->slug); ?>-tab" data-toggle="tab"
                                    href="#<?php echo esc_attr($term->slug); ?>" role="tab"
                                    aria-controls="<?php echo esc_attr($term->slug); ?>"
                                    aria-selected="true"><?php echo esc_html($term->name); ?>
                                </a>
                            </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-content" id="myTabContent">
                <?php foreach ($terms as $index => $term): ?>
                <div class="tab-pane <?php if ($index == 0) echo ' active'; ?>"
                    id="<?php echo esc_attr($term->slug); ?>" role="tabpanel"
                    aria-labelledby="<?php echo esc_attr($term->slug); ?>-tab">
                    <div class="row blog-listing-latest-list-content">
                        <?php
                            $query = new WP_Query([
                                'post_type'      => 'blog',
                                'posts_per_page' => 6,
                                'tax_query'      => [
                                    [
                                        'taxonomy' => 'blog-category',
                                        'field'    => 'term_id',
                                        'terms'    => $term->term_id,
                                    ],
                                ],
                            ]);
                            if ($query->have_posts()) :
                                while ($query->have_posts()) : $query->the_post(); ?>

                        <div class="col-md-4 careers-repeater">

                            <div class=" careers-repeater-row">
                                <div class="careers-row left-borders">
                                    <div class="careers-content">
                                        <a href="<?php the_permalink()?>">
                                            <?php the_post_thumbnail()?>
                                        </a>
                                        <h2 class="blog-section-left-titles"><?php the_title(); ?></h2>

                                    </div>
                                    <h4><?php the_field('section2_left_title_copy'); ?></h4>


                                    <div class="author-date">
                                        <div class="post-author">
                                            <div class="author-avatar">
                                                <?php echo get_avatar(get_the_author_meta('ID'), 64); ?>
                                            </div>
                                            <div class="author-name">
                                                <p> <?php the_author_posts_link(); ?></p>
                                            </div>

                                        </div>
                                        <div class="blog-listing-img">

                                            <img src="<?php the_field("celender_img", 'option'); ?>" alt="">

                                            <?php echo get_the_date(); ?>
                                        </div>
                                    </div>
                                    <p class="blog-section-left-content">
                                        <?php echo wp_trim_words(get_the_content(), 40, ''); ?></p>
                                    <div class="learn-more-seen">

                                        <a class="learn-more-button" href="<?php the_permalink(); ?>">Learn More</a>

                                        <div class="last-img">
                                            <img src="<?php the_field("timer_img_", 'option'); ?>" alt="">
                                            <?php
                                        $last_seen = get_post_meta(get_the_ID(), 'last_seen_time', true);
                                            if ($last_seen) {
                                                echo '<p>Last seen: ' . date('F j, Y, g:i a', strtotime($last_seen)) . '</p>';
                                            } else {
                                                echo '<p>3mins read</p>';
                                            }
                                        ?>
                                        </div>

                                    </div>

                                </div>


                            </div>
                        </div>
                        <?php endwhile;
                                wp_reset_postdata();
                                else :
                                    echo '<p>No posts found in this category.</p>';
                                endif;
                            ?>
                    </div>
                    <div class="text-center mt-3">
                        <button class="blog-btn " data-category="<?php echo esc_attr($term->term_id); ?>">View
                            More</button>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
            <?php endif; ?>
        </div>










        <div class="blog-line">
        </div>
        <div class="container">
            <div class="section-3">
                <div class="section-3-bg-img">
                    <img src="<?php the_field("popular_articles_bg_img", 'option'); ?>" alt="">
                    <p><?php the_field("popular_articles_content", 'option'); ?> </a></p>

                </div>
                <div class="row">

                    <?php
$args = [
    'post_type'      => 'blog',          // Your CPT
    'posts_per_page' => 3,              // Number of posts
    'order'          => 'DESC',
    'orderby'        => 'date',
    'tax_query'      => [
        [
            'taxonomy' => 'blog-category',   // Your custom taxonomy
            'field'    => 'slug',            // You can also use 'term_id'
            'terms'    => 'audit-and-compliance',              // Slug of the category you want to show
        ],
    ],
];
$ai_query = new WP_Query($args);
if ($ai_query->have_posts()) {

    
    while ($ai_query->have_posts()) {
        $ai_query->the_post();
        ?>


                    <div class="col-md-4 careers-repeater ">

                        <div class=" careers-repeater-row">
                            <div class="careers-row left-borders">
                                <div class="careers-content">
                                    <a href="<?php the_permalink()?>">
                                        <?php the_post_thumbnail()?>
                                    </a>
                                    <h2 class="blog-section-left-titles"><?php the_title(); ?></h2>

                                </div>
                                <h4><?php the_field('section2_left_title_copy'); ?></h4>


                                <div class="author-date">
                                    <div class="post-author">
                                        <div class="author-avatar">
                                            <?php echo get_avatar(get_the_author_meta('ID'), 64); ?>
                                        </div>
                                        <div class="author-name">
                                            <p> <?php the_author_posts_link(); ?></p>
                                        </div>

                                    </div>
                                    <div class="blog-listing-img">

                                        <img src="<?php the_field("celender_img", 'option'); ?>" alt="">

                                        <?php echo get_the_date(); ?>
                                    </div>
                                </div>
                                <p class="blog-section-left-content">
                                    <?php echo wp_trim_words(get_the_content(), 40, ''); ?></p>
                                <div class="learn-more-seen">

                                    <a class="learn-more-button" href="<?php the_permalink(); ?>">Learn More</a>

                                    <div class="last-img">
                                        <img src="<?php the_field("timer_img_", 'option'); ?>" alt="">
                                        <?php
                                        $last_seen = get_post_meta(get_the_ID(), 'last_seen_time', true);
                                            if ($last_seen) {
                                                echo '<p>Last seen: ' . date('F j, Y, g:i a', strtotime($last_seen)) . '</p>';
                                            } else {
                                                echo '<p>3mins read</p>';
                                            }
                                        ?>
                                    </div>

                                </div>

                            </div>


                        </div>
                    </div>


                    <?php
            


    }

} else {
    echo '<p>No posts found in AI category.</p>';
}
wp_reset_postdata();
?>
                </div>
                <div class="blog-btn">
                    <a href=""> <?php the_field("blog_listingp_age_button", 'option'); ?> </a>
                </div>

            </div>
        </div>

</main>
<?php

$term_id = get_field('related_category','option'); // ACF field returning term ID

if( $term_id ):
    // Get all posts to enable show/hide with JS
    $args = array(
        'post_type' => 'blog',
        'order' => 'DESC',
        'posts_per_page' => -1,  // <-- fetch ALL posts
        'tax_query' => array(
            array(
                'taxonomy' => 'blog-category',
                'field'    => 'term_id',
                'terms'    => $term_id,
            ),
        ),
    );

    $query = new WP_Query($args);

    if( $query->have_posts() ):
        echo '<div class="row">'; // ✅ Start the row wrapper

        while ($query->have_posts()) {
            $query->the_post();
            $termsArray = get_the_terms($post->ID, 'blog-category');
            $termsSLug = "";
            if (is_array($termsArray) || is_object($termsArray)) {
                foreach ($termsArray  as $term) {
                    $termsSLug .= $term->slug . ' ';
                }
            }
        ?>

        <!-- Add class "post" here -->
        <div class="col-md-4 blog-posts careers-repeater post">
            <div class="careers-repeater-row">
                <div class="careers-row left-borders">
                    <div class="careers-content">
                        <a href="<?php the_permalink()?>"><?php the_post_thumbnail()?></a>
                        <h2 class="blog-section-left-titles"><?php the_title(); ?></h2>
                    </div>
                    <h4><?php the_field('section2_left_title_copy'); ?></h4>

                    <div class="author-date">
                        <div class="post-author">
                            <div class="author-avatar"><?php echo get_avatar(get_the_author_meta('ID'), 64); ?></div>
                            <div class="author-name"><p><?php the_author_posts_link(); ?></p></div>
                        </div>
                        <div class="blog-listing-img">
                            <img src="<?php the_field("celender_img", 'option'); ?>" alt="">
                            <?php echo get_the_date(); ?>
                        </div>
                    </div>

                    <p class="single-blog-category-name"><?php echo $term->name; ?></p>
                    <p class="blog-section-left-content"><?php echo wp_trim_words(get_the_content(), 10, ''); ?></p>

                    <div class="learn-more-seen">
                        <a class="learn-more-button" href="<?php the_permalink(); ?>">Learn More</a>
                        <div class="last-img">
                            <img src="<?php the_field("timer_img_", 'option'); ?>" alt="">
                            <?php
                                $last_seen = get_post_meta(get_the_ID(), 'last_seen_time', true);
                                if ($last_seen) {
                                    echo '<p>Last seen: ' . date('F j, Y, g:i a', strtotime($last_seen)) . '</p>';
                                } else {
                                    echo '<p>3mins read</p>';
                                }
                            ?>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <?php
        }

        echo '</div>'; // ✅ Close the row wrapper

        // Add the toggle button here after the posts
        ?>
        <button id="toggleButton" class="btn btn-primary" style="margin-top: 20px;">View More</button>

        <?php
        wp_reset_postdata();
    endif;

endif;
?>

<style>
.post {
  display: none;
}
.post.visible {
  display: block;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function () {
  const posts = document.querySelectorAll('.post');
  const toggleButton = document.getElementById('toggleButton');

  const initialCount = 3; // Show first 3 posts initially
  let expanded = false;

  function showInitialPosts() {
    posts.forEach((post, index) => {
      if (index < initialCount) {
        post.classList.add('visible');
      } else {
        post.classList.remove('visible');
      }
    });
    toggleButton.textContent = 'View More';
    expanded = false;
  }

  function showAllPosts() {
    posts.forEach(post => post.classList.add('visible'));
    toggleButton.textContent = 'View Less';
    expanded = true;
  }

  toggleButton.addEventListener('click', () => {
    if (expanded) {
      showInitialPosts();
    } else {
      showAllPosts();
    }
  });

  // Show initial posts on page load
  showInitialPosts();
});
</script>


<?php get_footer(); ?>