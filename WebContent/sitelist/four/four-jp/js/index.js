$("document").ready(function () {
    $(function () {
        $(".bar-btn").click(function () {
            $(this).toggleClass("on");
            $("nav").toggleClass("slide");
        })
    }) //nav End
    $(".accodion .item").click(function () {
        $(this).next().slideToggle(300);
        $(".accodion p").not($(this).next())
                        $(".fade-html").click(function() {
                var url = $(this).attr("href");
                $("body").animate({"opacity": "0"}, 500, function() {
                    document.location.href = url;
                });
                return false;
            })
    }) //accodion End
                $(".fade-html").click(function() {
                var url = $(this).attr("href");
                $("body").animate({"opacity": "0"}, 500, function() {
                    document.location.href = url;
                });
                return false;
            });
}) //jquery End
