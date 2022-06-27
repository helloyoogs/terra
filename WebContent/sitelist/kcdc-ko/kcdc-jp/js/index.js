$("document").ready(function () {
    $(".nav-hover").hover(function () {
        $(".sub-nav").stop().slideToggle();
    }) //nav End
    $(".sub-nav").hover(function () {
        $(".sub-nav").stop().slideToggle();
    }) //nav End
    $(".bar-btn").click(function () {
        $(this).toggleClass("on");
        $(".mobile-nav").toggleClass("slide");
    }) // btn End
    $(".mobile-hover").hover(function () {
        var i = $(this).index();
        $(".sub-mobile").eq(i).stop().slideToggle();
    }) //mobile nav End


    $(".banner-btn li").click(function () {
        var i = $(this).index()
        $(".slide-banner img").hide().eq(i).show()
    }) //버튼 클릭 시 배너이미지 변경


    var k = 0
    var timer = setInterval(function () {

        k++;
        if (k > $(".slide-banner img").length - 1) {
            k = 0
        }
        $(".slide-banner img").hide().eq(k).show()
    }, 3000) //배너 이미지 3초마다변경

}) //jquery End
