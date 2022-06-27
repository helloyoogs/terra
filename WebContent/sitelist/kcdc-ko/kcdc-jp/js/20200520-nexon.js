$("document").ready(function(){

    var $indicator = $(".slider .indicator ul li"),
        $desc = $indicator.find("a p.desc"),
        $slider_bg = $(".slider .slider-bg ul li"),
        idx = 0,
        indi_length = $indicator.length - 1;
        // length > 길이 > 갯수 
        // 인디게이터의 실제 갯수 - 1 값을 indi_length 저장
        // 실제 4가 저장 > 원래 갯수 5 - 1 = 4;
        $indicator.eq(0).addClass("opacity")
        $desc.eq(0).addClass("active");
        // 처음 시작시 인디케이터 아이템의 밝기를 먼저 적용 / 글자에도 먼저 적용 (첫번째 요소)
        setTimeout(function(){
            // (인디게이터) (첫번째 요소)가 게이지 (가로길이값)이 찰 수 있도록 (클래스를 추가)
            $indicator.eq(0).addClass("width")
        }, 600)

        var timer = setInterval(function(){
            // 타이머가 동작될때 마다 (idx 값을 증감) 시키고, 해당 idx 값을 증감 시킬 때 (최대 수치를 넘어갈 시 0으로 초기)로 돌린다.
            // 실제 배경 및 인디케이터가 동작해야 하므로 (기존에 적용된 요소)에 (클래스를 모두 삭제) 하고 (해당 idx 값에 클래스를 추가)한다.
            idx++;
            if(idx > indi_length){
                idx = 0;
            }
            $slider_bg.hide().eq(idx).fadeIn(400)
            $indicator.removeClass("width opacity").eq(idx).addClass("width opacity");
            $desc.removeClass("active").eq(idx).addClass("active");
        }, 6000)
        // 인디케이터 리스트에 마우스가 올라갔다면, 게이지가 차는 클래스를 삭제하고 타이머를 멈춘다. 
        $indicator.mouseover(function(){
            $indicator.removeClass("width");
            clearInterval(timer)
        })
        // 인디케이터에 마우스가 빠져나왔다면 다시금 타이머가 작동되어야 하므로 타이머를 버그 방지를 위해 다시 한번 초기화를 시킨뒤, 먼저 게이지 + 오퍼시티 해당 요소에 클래스를 다시 추가 한뒤 타이머를 한번더 가동한다. 
        $indicator.mouseout(function(){
            clearInterval(timer)
            $indicator.removeClass("width opacity").eq(idx).addClass("width opacity");
            $desc.removeClass("active").eq(idx).addClass("active");
            timer = setInterval(function(){
                // 타이머가 동작될때 마다 (idx 값을 증감) 시키고, 해당 idx 값을 증감 시킬 때 (최대 수치를 넘어갈 시 0으로 초기)로 돌린다.
                // 실제 배경 및 인디케이터가 동작해야 하므로 (기존에 적용된 요소)에 (클래스를 모두 삭제) 하고 (해당 idx 값에 클래스를 추가)한다.
                idx++;
                if(idx > indi_length){
                    idx = 0;
                }
                $slider_bg.hide().eq(idx).fadeIn(400)
                $indicator.removeClass("width opacity").eq(idx).addClass("width opacity");
                $desc.removeClass("active").eq(idx).addClass("active");
            }, 6000)
        })

        // (인디케이터가 클릭) 했을 때 해당 인덱스값의 배경이 출현해야 하며, 클릭이벤트를 빠져나왔다면 자동으로 마우스 아웃 이벤트가 실행된다. 
        // * 같은 번호와 현재의 인덱스 값이 같다면 실행될 수 없다*
        $indicator.click(function(){
            // 같은 번호 실행할 수 없도록 현재의 인덱스 값과 같다면 리턴 시킨다.
            if(idx == $(this).index()){
                return;
            }
            idx = $(this).index();
            // 현재의 인덱스 값을 변수명 idx에 저장한다.
            $desc.removeClass("active");
            $indicator.removeClass("opacity");
            $slider_bg.hide().eq(idx).fadeIn(400)
        })
}) //jqueryEnd
