import Swiper from 'swiper/dist/js/swiper.min';

import $ from 'jquery';
$(document).ready(function () {
    var swiper = new Swiper('.swiper-container', {
//       pagination: '.swiper-pagination',
//       paginationClickable: true,
       slidesPerView: 4,
//       nextButton: '.swiper-button-next',
//       prevButton: '.swiper-button-prev',
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
       spaceBetween: 30,
             breakpoints: {
        1190: {
             slidesPerView: 3,
             spaceBetween: 40
        },
        1024: {
             slidesPerView: 3,
             spaceBetween: 40
        },
        768: {
             slidesPerView: 2,
             spaceBetween: 30
        },
        640: {
             slidesPerView: 1,
             spaceBetween: 20
        },
        320: {
             slidesPerView: 1,
             spaceBetween: 10
          }
        }
     });
  });