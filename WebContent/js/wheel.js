$("document").ready(function () {
        var scroll = 0;
    var scroll2 = 0;
    

    
 
    
    $(window).scroll(function () {
        scroll = $(window).scrollTop(); })
    $(".pop").on("click", function (e) {
        var i = $(this).index();
        $(".window").show().fadeTo(1000, 0.4);
        $(".window-content").addClass("on");
                $("html, body").css("overflow", "hidden");
        $(".close span").show();
                $("html, body").on("scroll touchmove mousewheel", function (e) {
            e.preventDefault();
            e.stopPropagation();
            return false;
        })
          $("html, body").scrollTop(scroll)
        scroll2 = scroll;
    })
    $(".close span, .window").on("click", function () {
        $(".window").fadeTo(1, 1).hide();
        $(".window-content").removeClass("on");
        $(".close span").hide();
        setTimeout(function () {
        }, 500)
        $("html, body").css("overflow", "visible");
        $("html, body").off("scroll touchmove mousewheel");
        $("html, body").scrollTop(scroll2)
    }) //닫기 버튼끝
}) //jquery End