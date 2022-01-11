$(document).on('click', '.mobile-menu', function (){
    $('.menus').toggleClass('show');
});

$(document).on('click', '.filter-menu', function (){
    $(this).addClass('hide');
    $('.filter-close').addClass('show');
    $('.filter-menus').addClass('show');
    $('.filter-content').addClass('hide');
});

$(document).on('click', '.filter-close', function (){
    $(this).removeClass('show');
    $('.filter-menu').removeClass('hide');
    $('.filter-menus').removeClass('show');
    $('.filter-content').removeClass('hide');
});

var swiper = new Swiper(".mySwiper", {
    pagination: {
        el: ".banner .swiper-pagination",
        clickable: true
    },
});

var swiper2 = new Swiper(".colorSwiper", {
    slidesPerView: 6,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    }
});

var swiper3 = new Swiper(".detailCarousel", {
    slidesPerView: 1.1,
    spaceBetween: 10,
    navigation: {
        nextEl: ".detailCarousel .swiper-button-next",
        prevEl: ".detailCarousel .swiper-button-prev",
    },
    pagination: {
        el: ".detail-banner-carousel .swiper-pagination",
        clickable: true
    },
    breakpoints: {
        700: {
            slidesPerView: 1.6
        },
    }
});

$('#tabs-nav li:first-child').addClass('active');
$('.tab-content').hide();
$('.tab-content:first').show();

$('#tabs-nav li').click(function(){
    $('#tabs-nav li').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').hide();

    var activeTab = $(this).find('a').attr('href');
    $(activeTab).show();
    return false;
});

$(window).bind('scroll', function () {
    if ($(window).scrollTop() > 50) {
        $('.detail .filter').addClass('fixed');
    } else {
        $('.detail .filter').removeClass('fixed');
        $('.filter-menus').removeClass('show');
        $('.filter-content').removeClass('hide');
        $('.filter-menu').removeClass('hide');
        $('.filter-close').removeClass('show');
    }
});