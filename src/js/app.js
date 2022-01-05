$(document).on('click', '.mobile-menu', function (){
    $('.menus').toggleClass('show');
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
    $(activeTab).fadeIn();
    return false;
});