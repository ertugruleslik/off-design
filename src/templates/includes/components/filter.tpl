<div class="filter {{ detailClass }}">
    <div class="container">
        <span class="filter-menu icon-menu"></span>
        <span class="filter-close icon-close"></span>
        <div class="filter-menus">
            {% include "includes/components/menus.tpl" %}
        </div>
        <div class="filter-content">
            <div class="filter-search">
                <input type="text" class="search" placeholder="Search of design">
            </div>
            <div class="filter-detail">
                <div class="filter-colors">
                    <div class="form-label">Material</div>
                    <div class="filter-carousel">
                        <div class="colorSwiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #0084FF"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #32D74B"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #FF9500"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #64D2FF"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #5856D6"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #000000"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #999"></div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="color-box" style="background-color: #0084FF"></div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-button-next">
                            <span class="icon-arrow"></span>
                        </div>
                        <div class="swiper-button-prev">
                            <span class="icon-arrow"></span>
                        </div>
                    </div>
                </div>
                <div class="filter-box">
                    <div class="filter-box-col">
                        <div class="form-label">Material</div>
                        <select name="" id="" class="dropdown">
                            <option value="">Select</option>
                            <option value="">Option 1</option>
                            <option value="">Option 2</option>
                        </select>
                    </div>
                    <div class="filter-box-col">
                        <div class="form-label">Size</div>
                        <select name="" id="" class="dropdown">
                            <option value="">Select</option>
                            <option value="">Option 1</option>
                            <option value="">Option 2</option>
                        </select>
                    </div>
                    <div class="filter-box-col">
                        <div class="form-label">&nbsp;</div>
                        <a href="#" class="btn btn-primary">Search</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>