$("document").ready(function () {
    var swiper = new Swiper(".swiper-container", {
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-next",
        },
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            type: "progressbar"
            //            type: "fraction"
//                        dynamicBullets: true
        },
        autoplay: {
            delay: 2000
        },
        breakpoints: {
            0: {
                slidesPerView: 1,
                spaceBetween: 10
            },
            480: {
                slidesPerView: 1,
                spaceBetween: 10
            },
            640: {
                slidesPerView: 1,
                spaceBetween: 10
            },
            760: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 30
            }

        }
    })
}) //jquery End
