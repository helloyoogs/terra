$("document").ready(function () {
    $(".bar-btn").click(function () {
        $(this).toggleClass("on");
        $("nav").toggleClass("slide");
    }) // btn End
    $("body").fadeIn(function () {
        $(this).animate({
            "opacity": "1"
        }, 500);
    });

    $(".fade-html").click(function () {
        var url = $(this).attr("href");
        $("body").animate({
            "opacity": "0"
        }, 500, function () {
            document.location.href = url;
        });
        return false;
    });
}) // jquery End
