$("document").ready(function () {
    //alert("웹디자인기능사")

    //마우스 휠 이벤트는 파이어폭스 브라우저에는 존재하지 않음
    //파이어폭스의 경우는 별도의 휠이벤트인 DOMMouseScroll 이벤트를 사용함
    //파이어폭스 브라우저 무시할 시 위 내용 해당 사항 없음

    var count = 0;
    var wheel_ch = false;
    $(".indicator ul li").eq(0).find("a").addClass("on")
        var offset = [];
    setTimeout(function(){
        for(var k = 0; k < $(".section").length; k++){
            offset.push($(".section").eq(k).offset().top)
        }
    }, 500)
    
    
       $(window).resize(function(){
         offset = [];
    setTimeout(function(){
        for(var k = 0; k < $(".section").length; k++){
            offset.push($(".section").eq(k).offset().top)
        }
    }, 500)
    })
    
    
    
    $(window).on("mousewheel DOMMouseScroll", function (e) {
        var delta = e.originalEvent.wheelDelta;
        var firefox = e.originalEvent.detail * -10;
        console.log(delta);

        if (wheel_ch == true) {
            return;
        }
        //만약 휠체크가 트루값이라면 하단의 소스가 실해하지 않도록 리턴을 시킵니다.

        setTimeout(function () {
            wheel_ch = false;
        }, 1000)
        //시간 지연 이벤트로 1초 뒤에 휠 체크가 다시 동작할 수 있도록 값을 펄스로 변경한다
        wheel_ch = true;
        //휠체크값이 펄스일때 처음에는 실행되므로 다시 실행하지 목하도록 휠 체크값을 트루로 설정한다.

        if (delta < 0 || firefox < 0) {

            //마우스 휠을 아래로 했을 때 이벤트
            count++;
            if (count > $(".section").length - 1) {
                count = $(".section").length - 1;
            }
        } else {
            //마우스 휠을 위로 했을 때 이벤트
            count--;
            if (count < 0) {
                count = 0;
            }
        }

       $("html, body").stop().animate({
        scrollTop: offset[count]-50
        }, 1000)
        //섹션의 세로 길이값을 받아와서 카운트값과 곱한다.
        $(".indicator ul li a").text("●")
        $(".indicator ul li").find("a").removeClass("on").eq(count).addClass("on")


    }) //wheel End
    $(".indicator ul li").on("click", function () {
        count = $(this).index();
        if (wheel_ch == true) {
            return;
        }
        setTimeout(function () {
            wheel_ch = false;
        }, 1000)
        wheel_ch = true;
        $("html, body").stop().animate({
        scrollTop: offset[count]-50
        }, 1000)
        console.log(count)
        $(".indicator ul li").find("a").removeClass("on").eq(count).addClass("on")
    })

//
//    $("body").swipe({
//        swipe: function (event, direction) {
//            if (direction == "up") {
//                count++;
//                if (count > $(".web").length - 1) {
//                    count = $(".web").length - 1;
//                }
//
//            } else if (direction == "down") {
//                count--;
//                if (count < 0) {
//                    count = 0;
//                }
//            } else if (direction == "left") {
//
//            } else if (direction == "right") {
//
//            }
//            if (wheel_ch == true) {
//                return;
//            }
//            setTimeout(function () {
//                wheel_ch = false;
//            }, 1000)
//            wheel_ch = true;
//            $("html, body").stop().animate({
//                scrollTop: $(".web").height() * count
//
//            }, 1000)
//            $(".indicator ul li").find("a").removeClass("on").eq(count).addClass("on")
//        }
//    })





}) //jquery End
