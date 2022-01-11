<main class="page-main detail">
    {% include "includes/components/filter.tpl" %}
    <div class="container">
        {% include "includes/components/breadcrumb.tpl" %}
        {% include "includes/components/detail-banner.tpl" %}

        <div class="detail-text full mt-20">The use of copper in lighting has always been a pleasant decor. Copper products are used in decoration in many areas. It may be a good idea to use products with strong reflection in the light source. In this case, copper is a great choice with its color. For you, we gathered copper-colored lighting products.</div>

        <div class="detail-columns">
            <div class="detail-left">
                <img src="assets/images/detail-content-1.png" alt="">
                <div class="detail-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mollis lorem, quis ornare arcu. Mauris sodales posuere nunc, nec efficitur risus pharetra vitae. Nullam at odio vitae nulla blandit consectetur sed at dui. Cras tristique elit sit amet condimentum consectetur. Integer in augue sed arcu efficitur sodales non sit amet nunc.</div>
                <img src="assets/images/detail-content-2.png" alt="">
                <div class="detail-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mollis lorem, quis ornare arcu. Mauris sodales posuere nunc, nec efficitur risus pharetra vitae. Nullam at odio vitae nulla blandit consectetur sed at dui. Cras tristique elit sit amet condimentum consectetur. Integer in augue sed arcu efficitur sodales non sit amet nunc. Vivamus vel felis mollis, euismod est eget, laoreet erat. Nulla scelerisque vitae quam quis interdum. Curabitur congue sodales lorem, ac tristique metus elementum vel. Etiam eu faucibus nisi. </div>
                <img src="assets/images/detail-content-2.png" alt="">
                <div class="detail-text mb-30">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec mollis lorem, quis ornare arcu. Mauris sodales posuere nunc, nec efficitur risus pharetra vitae. Nullam at odio vitae nulla blandit consectetur sed at dui. Cras tristique elit sit amet condimentum consectetur. Integer in augue sed arcu efficitur sodales non sit amet nunc. Vivamus vel felis mollis, euismod est eget, laoreet erat. Nulla scelerisque vitae quam quis interdum. Curabitur congue sodales lorem, ac tristique metus elementum vel. Etiam eu faucibus nisi. </div>

                <div class="detail-social">
                    <ul class="detail-social-list">
                        <li><span class="icon-instagram-circle"></span></li>
                        <li><span class="icon-twitter-circle"></span></li>
                        <li><span class="icon-facebook-circle"></span></li>
                    </ul>
                    <hr class="detail-social-hr">
                    <div class="detail-social-info">share social networks</div>
                </div>
            </div>
            <div class="detail-right">
                <div class="related">
                    <div class="related-title">Related Posts</div>
                    <div class="related-list">
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-1.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-2.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-3.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-1.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="advertise 360x480">Reklam</div>

                <div class="related">
                    <div class="related-list">
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-1.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-2.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-3.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                        <div class="related-post">
                            <div class="related-img"><img src="assets/images/related-1.png"></div>
                            <div class="related-post-content">
                                Cleaning And Organizing Your Computer
                                <span>13 Feb 2020</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="tabs">
            <ul id="tabs-nav">
                <li><a href="#tab1">Comments</a></li>
            </ul>
            <div id="tabs-content">
                <div id="tab1" class="tab-content">
                    {% include "includes/components/comment-form.tpl" %}
                </div>
            </div>
        </div>

        {% include "includes/components/kitchen.tpl" %}
    </div>
</main>
