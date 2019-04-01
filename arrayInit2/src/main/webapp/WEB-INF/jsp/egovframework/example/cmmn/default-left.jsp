<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	var earPhone = ["airPod","AKG","BO"];
	
	var CPU = ["intel","AMD"];

	var EnglishTestList = ["TOEIC","TOEICSpeaking","OPIC"];
	
	var selectoCoffeeMenu = ["pureMild","awsomeDark","supremo"];
	
	var JapaneseCityList = ["Fukuoka","Tokyo","Osaka"];
	
	var roadShopNames = ["innisfree","tonyMory","theFaceShop"];
	
	$(function() {
		
		<c:forEach items="${roadShop}" var="roadShop">
			alert("<c:out value='${roadShop}'/>");		
		</c:forEach>
				
		var pageName = "<c:out value='${param.pageName}'/>";
		 
		if (pageName != "") {
			$(".menu").removeClass("active");
			$("#" + pageName).addClass("active");
		}
		
		$(".menu").click(function() {
			var menu = $(this).attr("id");
			left.pageSubmitFn(menu);	
		});
	});
	
	var left = {
			pageSubmitFn : function(menu) {
				$("#frm").attr("action", menu + ".do");
				$("#pageName").val(menu);
				$("#ear").val(earPhone);
				$("#CPU").val(CPU);
				$("#EnglishTest").val(EnglishTestList);
				$("#JapaneseCity").val(JapaneseCityList);
				$("#roadShop").val(roadShopNames);
				
				$("#frm").submit();
			}		
		};
		
</script>

<form id="frm">
	<input type="hidden" id="pageName" name="pageName"/>
	<input type="hidden" id="ear" name="ear"/>
	<input type="hidden" id="CPU" name="CPU"/>
	<input type="hidden" id="EnglishTest" name="EnglishTest"/>
	<input type="hidden" id="JapaneseCity" name="JapaneseCity"/>
	<input type="hidden" id="roadShop" name="roadShop"/>
</form>

<div class="sidebar" data-color="orange" data-image="img/full-screen-image-3.jpg">
     <div class="logo">
        <a href="https://hanqea.co.kr/" class="logo-text">
            한큐에자바
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="https://hanqea.co.kr/" class="logo-text">
			한큐에자바
		</a>
	</div>
   	<div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="img/default-hanq.png" />
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    Hanqea
                    <b class="caret"></b>
                </a>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Edit Profile</a></li>
                        <li><a href="#">Settings</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li id="main" class="menu active">
                <a href="#">
                    <i class="pe-7s-home"></i>
                    <p>메인</p>
                </a>
            </li>
            
            <li id="array" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>게시글 조회</p>
                </a>
            </li>
            
             <li id="ear" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>이어폰</p>
                </a>
            </li>
            
            <li id="CPU" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>CPU</p>
                </a>
            </li>
            
             <li id="EnglishTest" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>영어시험 종류 </p>
                </a>
            </li>
            
            <li id="selectoCoffee" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>셀렉토커피 종류 </p>
                </a>
            </li>
            
            <li id="JapaneseCity" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>일본의 도시</p>
                </a>
            </li>
            
              <li id="roadShop" class="menu">
                <a href="#">
                    <i class="pe-7s-note"></i>
                    <p>로드샵 종류 </p>
                </a>
            </li>
            
        </ul>
   	</div>
</div>
