$("document").ready(function () {
    var scroll = 0;
    var scroll2 = 0;
    $(window).scroll(function () {
        scroll = $(window).scrollTop();
    })
    $(".manga map area").click(function (e) {
        var i = $(".manga map area").index(this)
        $(".nugool-wrap").eq(i).show();
        $(".window").show();
        $("html, body").css("overflow", "hidden");
        $("html, body").on("scroll touchmove mousewheel", function (e) {
            e.preventDefault();
            e.stopPropagation();
            return false;
        })
        $("html, body").scrollTop(scroll)
        scroll2 = scroll;
    }) //팝업 띄우기
    $(".nugool-wrap img.close").click(function () {
        $(".nugool-wrap").hide();
        $(".window").hide();
        $("html, body").css("overflow", "visible");
        $("html, body").off("scroll touchmove mousewheel");
        $("html, body").scrollTop(scroll2)
    }) //닫기 버튼끝


    //    island hover start
    $(".island1 img").mouseover(function () {
        $(".island1 img").attr("src", "./icon/hover/guid_btn__pc_on.png")
    }) //mouseover End

    $(".island1 img").mouseout(function () {
        $(".island1 img").attr("src", "./icon/web/guid_btn__pc_off.png")
    }) //mouseout 
    $(".island2 img").mouseover(function () {
        $(".island2 img").attr("src", "./icon/hover/slowlife_btn__pc_on.png")
    }) //mouseover End

    $(".island2 img").mouseout(function () {
        $(".island2 img").attr("src", "./icon/web/slowlife_btn__pc_off.png")
    }) //mouseout

    //    island hover End

    var offset = [];
    for (var i = 0; i < $(".scroll").length; i++) {
        offset.push($(".scroll").eq(i).offset().top)
        console.log(offset)
    }
    $("nav ul li").on("click", function () {
        // 인덱스값
        var k = $(this).index();
        $("html, body").stop().animate({
            scrollTop: offset[k-1]
        }, 1000)
    }) //offeset 끝
    $(window).resize(function () {
        offset = [];
        for (var i = 0; i < $(".scroll").length; i++) {
            offset.push($(".scroll").eq(i).offset().top)
            console.log(offset)
        }
    }) //resize End

    //resize End
    $('img[usemap]').rwdImageMaps();




}) //jquery End
