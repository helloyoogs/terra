$("document").ready(function () {
    $(function () {
        $(".bar-btn").click(function () {
            $(this).toggleClass("on");
            $("nav").toggleClass("slide");
        })
    })//헤더햄버거버튼End
//    //alert("")

   if (matchMedia("screen and (max-width:500px) and (min-width:0px)").matches) {
$(".popup").hide();
    } else {
    $(".close").click(function () {
        $(".popup").hide();
    })  //모달창End
    function setCookie(name, value, expiredays) {
        //함수명 setCookie 이름으로 설정하고 , 값은 name/ value/ expiredays 값을 받아 적용
        var todayDate = new Date();
        //현재의 시간을 년월일시분초로 가져온다
        //가져온 데이터를 todayDate변수에 값을 저장
        todayDate.setDate(todayDate.getDate() + expiredays);
        //쿠키 저장시간 셋팅 /시간과 날짜값
        document.cookie = name + "=" + escape(value) + "; path =/; expires=" + todayDate.toGMTString() + ";"
        //        쿠키값을 만들어주는 코드이며 쿠키명/ 쿠키값/ 경로 / 쿠키 종료일자를 셋팅
        //        한글 깨짐 방지를 위해 escape를 사용
        //        escape = 모든 컴퓨터에서 읽을 수 있도록 문자열을 인코딩
    } //setCookie End
    function closeLayer() {
        //        문서 내 투데이 체크박스 폼의 체크박스가 선택이 되어있다면 쿠키를 설정
        //        쿠키명 쿠키값 만료일
        //        쿠키명은 영문으로 작성(한글 작성 안됨)
        //        쿠키값은 문자열로 입력 " <"
        //만료일은 숫자로만 작성
        //예를 들어 만료일이 -1이면 쿠키값이 삭제됨
        if (document.today.chk.checked) {
            setCookie("popup", "abc", 1);
        }
        //공지사항을 닫는다
        $(".popup").hide();
    } // closeLayer End
    //문서 내 쿠키를 cookieData 이름으로 저장
    var cookieDate = document.cookie;
    //문자열 내에서 특정한 문자열의 위치값을 확인 후 return 
    //    탐색하려는 문자열이 존재하지 않는다면 -1값을 리턴(indexOf)
    //    만약 -1값이라면 공지사항이 화면에 나오고 쿠키설정이 되어있었다면 리턴 값은 0이 되어 1일 동안 공지사항에 나오지 않는다.
    //    만약 -1값이라면 공지사항이 화면에 나오고 쿠키설정이 되어있었다면 리턴 값은 0이 되어 1일 동안 공지사항에 나오지 않는다.
    // alert(cookieDate.indexOf("notice=abc"))
    if (cookieDate.indexOf("popup=abc") < 0) {
        $(".popup").show();
    } else {
        $(".popup").hide();
    }
    //체크박스 체크시 closeLayer을 호출
    $("input[type ='checkbox']").on("click", function () {
        closeLayer();
    })
    }
}) //jquery End
