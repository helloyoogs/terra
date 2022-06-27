$("document").ready(function(){
var bar = new ProgressBar.Line("#pro1",{
      //progressbar를 적용할 div id값을 입력 + 종류를 선택
        //line - circle -semicircle
        strokeWidth: 2, //채워지는 선의 굵기
        easing: "easeInOut", //값이 채워지는 애니메이션 속도
        duration: 1400, //총 진행시간(예제는 1.4초)
        color: "#82cdc0", //채워지는 선의 색상
        trailWidth: 4, //배경선의 굵기
        trailColor: "#fff", //배경 선의 색상
        step: function(state, circle){
            circle.setText(Math.round(circle.value() * 100)+"%")
        }
    })
                bar.animate(0.8)
        var bar2 = new ProgressBar.Line("#pro2",{
      //progressbar를 적용할 div id값을 입력 + 종류를 선택
        //line - circle -semicircle
        strokeWidth: 2, //채워지는 선의 굵기
        easing: "easeInOut", //값이 채워지는 애니메이션 속도
        duration: 1400, //총 진행시간(예제는 1.4초)
        color: "#82cdc0", //채워지는 선의 색상
        trailWidth: 4, //배경선의 굵기
        trailColor: "#fff", //배경 선의 색상
        step: function(state, circle){
            circle.setText(Math.round(circle.value() * 100)+"%")
        }
    })
                    bar2.animate(0.8)
        var bar3 = new ProgressBar.Line("#pro3",{
      //progressbar를 적용할 div id값을 입력 + 종류를 선택
        //line - circle -semicircle
        strokeWidth: 2, //채워지는 선의 굵기
        easing: "easeInOut", //값이 채워지는 애니메이션 속도
        duration: 1400, //총 진행시간(예제는 1.4초)
        color: "#82cdc0", //채워지는 선의 색상
        trailWidth: 4, //배경선의 굵기
        trailColor: "#fff", //배경 선의 색상
        step: function(state, circle){
            circle.setText(Math.round(circle.value() * 100)+"%")
        }
    })
    bar3.animate(0.9)
            }) // jquery End