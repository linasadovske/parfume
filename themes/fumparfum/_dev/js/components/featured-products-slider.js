import Swiper from 'swiper/dist/js/swiper.min';

import $ from 'jquery';
$(document).ready(function () {
    var swiper = new Swiper('.swiper-container', {
       slidesPerView: 4,
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
        769: {
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