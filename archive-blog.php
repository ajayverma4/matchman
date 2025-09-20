<?php 
get_header("white"); ?>

<main role="main" class="archive-blog-page">


    <div class="blog-listing-page">
        <div class="container">

            <div class="row blog-listing-header-section">
                <div class="col-md-12 blog-listing-header-section-title">
                    <h1><?php the_field("blog_title", "option");?></h1>
                    <?php the_field("blog_content", "option");?>
                </div>
            </div>

            <div class="row blog-listing-section1">
                <div class="col-md-6 blog-listing-section1-left">

                    <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args = array(
                            'post_type' => 'blog',
                            'order' => 'DESC',
                            //'orderby' => 'ID',
                            'posts_per_page' => 1,
                            'paged' => $paged,
                        );

                        $query = new WP_Query($args);
                        while ($query->have_posts()) {
                            $query->the_post();;
                            $termsArray = get_the_terms($post->ID, 'blog_category');
                            $termsSLug = "";
                            if (is_array($termsArray) || is_object($termsArray)) {
                                foreach ($termsArray  as $term) {
                                    $termsSLug .= $term->slug . ' ';
                                }
                            }
                        ?>

                    <div class="blog-listing-section1-left-description">
                        <a href="<?php the_permalink($id); ?>">
                            <?php the_post_thumbnail();?>
                        </a>

                        <div class="blog-listing-section1-content">
                            <div class="blog-listing-section1-title">
                                Featured
                            </div>
                            <h2><?php the_title();?></h2>
                            <a class="blog-listing-section1-left-btn" href="<?php the_permalink($id); ?>">
                                Read More ></a>
                        </div>

                        <?php ?>
                        <?php  } wp_reset_postdata(); ?>

                    </div>
                </div>
                <div class="col-md-6 blog-listing-section1-right">

                    <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args = array(
                            'post_type' => 'blog',
                            'order' => 'DESC',
                            //'orderby' => 'ID',
                            'posts_per_page' => 3,
                            'paged' => $paged,
                        );

                        $query = new WP_Query($args);
                        while ($query->have_posts()) {
                            $query->the_post();;
                            $termsArray = get_the_terms($post->ID, 'blog_category');
                            $termsSLug = "";
                            if (is_array($termsArray) || is_object($termsArray)) {
                                foreach ($termsArray  as $term) {
                                    $termsSLug .= $term->slug . ' ';
                                }
                            }
                        ?>

                    <div class="blog-listing-section1-right-descriptions">
                        <div class="row blog-listing-section1-right-description">
                            <div class="col-md-4 blog-listing-section1-right-description-left">
                                <a href="<?php the_permalink($id); ?>">
                                    <?php the_post_thumbnail();?>
                                </a>
                            </div>
                            <div class="col-md-8 blog-listing-section1-right-description-right">
                                <div class="blog-listing-section1-right-description-right-title"><?php the_title();?>
                                </div>

                                <p> <?php echo wp_trim_words(get_the_content(), 10, '...');?></p>

                                <div class="blog-listing-section1-right-content">
                                    <div class="single-blog-author-detail">
                                        <div class="single-blog-author-image">
                                            <?php echo get_avatar(get_the_author_meta('ID'), 96); ?>
                                        </div>
                                        <div class="single-blog-author-name"><?php the_author(); ?></div>
                                    </div>

                                    <div class="single-blog-date">
                                        <img class="blog-listing-section1-right-date-icon"
                                            src="<?php the_field("calendar_icon", "option");?>" alt="">
                                        <?php echo get_the_date(); ?>
                                    </div>
                                </div>

                                <div class="blog-listing-section1-right-content">

                                    <a class="blog-listing-section1-right-btn" href="<?php the_permalink($id); ?>">
                                        Read More > </a>

                                    <div class="single-blog-header-date-time">
                                        <img class="blog-listing-section1-right-date-icon"
                                            src="<?php the_field("time_icon", "option");?>" alt="">

                                        <?php
                                            $mycontent = $post->post_content; // wordpress users only
                                            $word = str_word_count(strip_tags($mycontent));
                                            $m = floor($word / 200);
                                            $s = floor($word % 200 / (200 / 60));
                                            $est = $m . 'mins' . ($m == 1 ? '' : 's');
                                        ?>
                                        <span class="read-time"><?php echo $est; ?> read</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php ?>
                    <?php  } wp_reset_postdata(); ?>

                </div>
            </div>


        </div>
    </div>


    <div class="blog-listing-latest-blog">
        <div class="container">
            <div class="row blog-listing-latest-blog-title">
                <div class="col-md-12">
                    <div class="index-core-capabilities-section-repeater-left-title">
                        <img src="<?php the_field("latest_blog_image", "option");?>" alt="">
                        <span class="industry-digital-brand-repeater-icon-section-bottom">
                            <?php the_field("latest_blog_title", "option");?>
                        </span>
                    </div>
                </div>
            </div>

            <div class="row blog-listing-latest-list">
                <div class="col-md-12 blog-listing-table">
                    <span class="blog-listing-table-title">Explore more:</span>
                    <?php
                    $terms = get_terms([
                        'taxonomy'   => 'blog_category',
                        'hide_empty' => true,
                    ]);
            
                    if (!empty($terms) && !is_wp_error($terms)) :
                    ?>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <?php foreach ($terms as $index => $term): ?>
                        <li class="nav-item term-tab <?php echo $index >= 5 ? 'extra-category d-none' : ''; ?>"
                            role="presentation">
                            <a class="nav-link <?php if ($index == 0) echo 'active'; ?>"
                                id="<?php echo esc_attr($term->slug); ?>-tab" data-toggle="tab"
                                href="#<?php echo esc_attr($term->slug); ?>" role="tab"
                                aria-controls="<?php echo esc_attr($term->slug); ?>"
                                aria-selected="<?php echo $index == 0 ? 'true' : 'false'; ?>">
                                <?php echo esc_html($term->name); ?>
                            </a>
                        </li>
                        <?php endforeach; ?>
                    </ul>

                    <?php if (count($terms) > 5): ?>
                    <div class="toggle-categories text-center">
                        <a href="#" id="toggleCategoriesBtn">
                            <span id="toggleIcon"><i class="fab fa-chevron-down"></i></span>
                        </a>
                    </div>
                    <?php endif; ?>
                </div>
            </div>

            <div id="post-listing-container">
                <div class="tab-content" id="myTabContent">
                    <?php foreach ($terms as $index => $term): ?>
                    <div class="tab-pane <?php if ($index == 0) echo ' active'; ?>"
                        id="<?php echo esc_attr($term->slug); ?>" role="tabpanel"
                        aria-labelledby="<?php echo esc_attr($term->slug); ?>-tab">

                        <div class="row blog-listing-latest-list-content" id="postContainer">
                            <?php
                            $term = get_term_by('slug', esc_attr($term->slug), 'blog_category');
                            $query = new WP_Query([
                                'post_type'      => 'blog',
                                'posts_per_page' => -1,
                                'tax_query'      => [
                                    [
                                        'taxonomy' => 'blog_category',
                                        'field'    => 'term_id',
                                        'terms'    => $term->term_id,
                                    ],
                                ],
                            ]);

                            if ($query->have_posts()) :
                                while ($query->have_posts()) : $query->the_post(); ?>
                            <div
                                class="col-lg-4 col-md-6 post-item blog-listing-latest-list-description blog-listing-section1-right-description-right">

                                <div class="blog-listing-latest-list-descr">
                                    <a href="<?php the_permalink($id); ?>">
                                        <?php the_post_thumbnail('full');?>
                                    </a>

                                    <div class="blog-listing-latest-list-content">
                                        <div class="blog-listing-latest-list-title"><?php the_title();?></div>

                                        <div class="blog-listing-section1-right-content">
                                            <div class="single-blog-author-detail">
                                                <div class="single-blog-author-image">
                                                    <?php echo get_avatar(get_the_author_meta('ID'), 96); ?>
                                                </div>
                                                <div class="single-blog-author-name"><?php the_author(); ?></div>
                                            </div>

                                            <div class="single-blog-date">
                                                <img class="blog-listing-section1-right-date-icon"
                                                    src="<?php the_field("calendar_icon", "option");?>" alt="">
                                                <?php echo get_the_date(); ?>
                                            </div>
                                        </div>

                                        <p> <?php echo wp_trim_words(get_the_content(), 10, '...');?></p>

                                        <div class="blog-listing-section1-right-content">

                                            <a class="blog-listing-section1-right-btn"
                                                href="<?php the_permalink($id); ?>">
                                                Read More > </a>

                                            <div class="single-blog-header-date-time">
                                                <img class="blog-listing-section1-right-date-icon"
                                                    src="<?php the_field("time_icon", "option");?>" alt="">

                                                <?php
                                            $mycontent = $post->post_content; // wordpress users only
                                            $word = str_word_count(strip_tags($mycontent));
                                            $m = floor($word / 200);
                                            $s = floor($word % 200 / (200 / 60));
                                            $est = $m . 'mins' . ($m == 1 ? '' : 's');
                                        ?>
                                                <span class="read-time"><?php echo $est; ?> read</span>
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

                        <div class="home-book-demo-btn blog-listing-button">
                            <a class="load-more-posts-btn" id="viewMoreBtn">
                                View More
                            </a>
                            <a class="load-more-posts-btn" style="display: none;" id="lessMoreBtn"
                                data-term-slug="<?php echo esc_attr($term->slug); ?>">
                                 Less More
                            </a>
                        </div>

                    </div>
                    <?php endforeach; ?>
                </div>
            </div>

            <?php endif; ?>

        </div>

    </div>


    <div class="blog-listing-popular-section">
        <div class="container">
            <div class="row blog-listing-latest-blog-title">
                <div class="col-md-12">
                    <div class="index-core-capabilities-section-repeater-left-title">
                        <img src="<?php the_field("popular_article_image", "option");?>" alt="">
                        <span class="industry-digital-brand-repeater-icon-section-bottom">
                            <?php the_field("popular_article_title", "option");?>
                        </span>
                    </div>
                </div>
            </div>


            <?php
                $term_id = get_field('custom_blog_category', "option"); // Get the taxonomy term ID from custom field

                if ($term_id):
                    $term = get_term($term_id, 'blog_category'); // Adjust taxonomy if it's not 'blog_category'

                    $query = new WP_Query([
                        'post_type' => 'blog',
                        'posts_per_page' => -1,
                        'tax_query' => [
                            [
                                'taxonomy' => 'blog_category',
                                'field' => 'term_id',
                                'terms' => $term_id,
                            ],
                        ],
                    ]);
                ?>

            <div class="row blog-section-featured" id="featured-blog-posts">
                <?php if ($query->have_posts()): while ($query->have_posts()): $query->the_post(); ?>
                <div
                    class="col-lg-4 col-md-6 post-items blog-listing-latest-list-description blog-listing-section1-right-description-right">

                    <div class="blog-listing-latest-list-descr">
                        <a href="<?php the_permalink($id); ?>">
                            <?php the_post_thumbnail();?>
                        </a>

                        <div class="blog-listing-latest-list-content">
                            <div class="blog-listing-latest-list-title"><?php the_title();?></div>

                            <div class="blog-listing-section1-right-content">
                                <div class="single-blog-author-detail">
                                    <div class="single-blog-author-image">
                                        <?php echo get_avatar(get_the_author_meta('ID'), 96); ?>
                                    </div>
                                    <div class="single-blog-author-name"><?php the_author(); ?></div>
                                </div>

                                <div class="single-blog-date">
                                    <img class="blog-listing-section1-right-date-icon"
                                        src="<?php the_field("calendar_icon", "option");?>" alt="">
                                    <?php echo get_the_date(); ?>
                                </div>
                            </div>

                            <p> <?php echo wp_trim_words(get_the_content(), 10, '...');?></p>

                            <div class="blog-listing-section1-right-content">

                                <a class="blog-listing-section1-right-btn" href="<?php the_permalink($id); ?>">
                                    Read More > </a>

                                <div class="single-blog-header-date-time">
                                    <img class="blog-listing-section1-right-date-icon"
                                        src="<?php the_field("time_icon", "option");?>" alt="">

                                    <?php
                                            $mycontent = $post->post_content; // wordpress users only
                                            $word = str_word_count(strip_tags($mycontent));
                                            $m = floor($word / 200);
                                            $s = floor($word % 200 / (200 / 60));
                                            $est = $m . 'mins' . ($m == 1 ? '' : 's');
                                        ?>
                                    <span class="read-time"><?php echo $est; ?> read</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endwhile; wp_reset_postdata(); endif; ?>
            </div>

            <div class="home-book-demo-btn blog-listing-button">
                <a class="load-more-posts-btn" id="viewMoreBtns">
                    View More
                </a>
                <a class="load-more-posts-btn" style="display: none;" id="lessMoreBtns" data-term-slug="<?php echo esc_attr($term->slug); ?>">
                    Less More
                </a>
            </div>

            <?php endif; ?>


        </div>

    </div>


    <?php get_template_part("hubspot-form");?>item


    <script>
    document.addEventListener("DOMContentLoaded", function() {
        const tabPanes = document.querySelectorAll(".tab-pane");

        tabPanes.forEach(pane => {
            const posts = pane.querySelectorAll(".post-item");
            const viewMoreBtn = pane.querySelector("#viewMoreBtn");
            const lessMoreBtn = pane.querySelector("#lessMoreBtn");

            let currentIndex = 6;

            function showPosts(limit) {
                posts.forEach((post, index) => {
                    post.style.display = index < limit ? "block" : "none";
                });

                if (limit >= posts.length) {
                    viewMoreBtn.style.display = "none";
                    lessMoreBtn.style.display = "inline-block";
                } else {
                    viewMoreBtn.style.display = "inline-block";
                    lessMoreBtn.style.display = "none";
                }
            }

            // Initial show
            showPosts(currentIndex);

            viewMoreBtn?.addEventListener("click", () => {
                currentIndex += 6;
                showPosts(currentIndex);
            });

            lessMoreBtn?.addEventListener("click", () => {
                currentIndex = 6;
                showPosts(currentIndex);
            });
        });
    });
    </script>





    <script>
    const posts = document.querySelectorAll(".post-items");
    const viewMoreBtn = document.getElementById("viewMoreBtns");
    const lessMoreBtn = document.getElementById("lessMoreBtns");

    let currentIndex = 3;

    function showPosts(limit) {
        posts.forEach((post, index) => {
            post.style.display = index < limit ? "block" : "none";
        });

        if (limit >= posts.length) {
            viewMoreBtn.style.display = "none";
            lessMoreBtn.style.display = "inline-block";
        } else {
            viewMoreBtn.style.display = "inline-block";
            lessMoreBtn.style.display = "none";
        }
    }

    // Initial 6 posts
    showPosts(currentIndex);

    viewMoreBtn.addEventListener("click", () => {
        currentIndex += 3;
        showPosts(currentIndex);
    });

    lessMoreBtn.addEventListener("click", () => {
        currentIndex = 3;
        showPosts(currentIndex);
    });
    </script>







    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const toggleBtn = document.getElementById('toggleCategoriesBtn');
        const extraTabs = document.querySelectorAll('.extra-category');
        const toggleIcon = document.getElementById('toggleIcon');
        let isExpanded = false;

        toggleBtn?.addEventListener('click', function(e) {
            e.preventDefault();

            extraTabs.forEach(tab => {
                tab.classList.toggle('d-none');
            });

            isExpanded = !isExpanded;
            toggleIcon.innerHTML = isExpanded ?
                '<i class="fab fa-chevron-up"></i>' :
                '<i class="fab fa-chevron-down"></i>';
        });
    });
    </script>



</main>

<?php get_footer(); ?>