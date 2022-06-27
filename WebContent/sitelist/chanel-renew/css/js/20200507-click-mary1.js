$("document").ready(function () {
    //alert("")
    var scroll = 0;
    var scroll2 = 0;
    $(window).scroll(function () {
        scroll = $(window).scrollTop();
        console.log(scroll)
    })
   
    $(".product-1 ul li").click(function () {
        var i = $(".product-1 ul li").index(this)
        $(".productpage-wrap").eq(i).show();
        $(".window").show();
        $("html, body").css("overflow", "hidden");
        $("html, body").on("scroll touchmove mousewheel", function (e) {
            e.preventDefault();
            e.stopPropagation();
            return false;
        })
        $("html, body").scrollTop(scroll)
        scroll2 = scroll;
    })
    $(".product-2 ul li").click(function () {
        
        var i = $(".product-2 ul li").index(this) + 3
        $(".productpage-wrap").eq(i).show();
        $(".window").show();
        $("html, body").css("overflow", "hidden");
        $("html, body").on("scroll touchmove mousewheel", function (e) {
            e.preventDefault();
            e.stopPropagation();
            return false;
        })     
        $("html, body").scrollTop(scroll)
        scroll2 = scroll; 
        console.log(scroll, scroll2)
    })

    $(".productpage-wrap ul .productpage-name .x-btn").click(function (e) {
        e.preventDefault();
        $(".window").hide();
        $(".productpage-wrap").hide();
        $("html, body").css("overflow", "visible");
        $("html, body").off("scroll touchmove mousewheel");
        $("html, body").scrollTop(scroll2)
    }) //닫기 버튼 끝

}) //jquery end   
