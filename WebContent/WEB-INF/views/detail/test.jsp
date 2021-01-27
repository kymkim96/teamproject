<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_seoyeon.css">
		<script src="<%=application.getContextPath()%>/resources/js/detailLink.js"></script>
		
  			
  		
  		
	</head>
	
	
	<body>
		<div id="layout">
		
			
			<%@ include file="/WEB-INF/views/common/Header.jsp" %>
					
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="second">
				<div class="detail" id="pic1">
					<img alt="book.jpg" 
					src="http://image.kyobobook.co.kr/images/book/xlarge/036/x9791190977036.jpg" height="500px">
				</div>
				
				<div class="detail" id="info">
					<div id="detail_info">
						<ul>
							<h2>미스터 마켓2021</h2>
							<h4>삼프로TV와 함께하는 2021년 주식시장 전망과 투자전략
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								</h4>
							
							<li><div id="infoL">지은이 :  </div> <div id="infoR">이한영, 김효진 , 이다솔 외</div></li>
											

						</ul>
						<hr/>
					</div>
					
					<div id="detail_info">
						<ul>
							<li><div id="infoL">정가 : </div> <div id="infoR">17,000원</div></li>
							<li><div id="infoL">판매가격 : </div><div id="infoR">
								<div style="display: inline; font-size: 25px; color: red;">15,300원</div>
								<div style="display: inline;">[10% 할인]</div></div>
								
								</li>
							<li><div id="infoL">배송비 : </div> <div id="infoR">무료</div></li>
							
						</ul><hr/>
					</div>
					<div id="detail_info">
						<!-- 수량 업다운 자바스크립트에서 배운거로 할 수 있는건가?! -->
						
						<p  style="display: inline-block; width: 60px; margin-left: 30px; font-size: 15px;">수량 : </p>
						<p id="amount" style=" display: inline-block; width: 60px;"> 0</p>
						<button id="plus" style="background-color:#917354; color: white; "> + </button>
						<button id="minus" style="background-color:#917354; color: white; "> - </button>
						<hr/>
					</div>	
					
					<div>
						<button id="goCart" type="button" class="btn btn-lg" 
						style="margin-left: 50px; background-color:#917354; color: white; ">장바구니 가기 </button>
						<div id="goCartResult" style="margin-left: 30px; margin-top: 30px;"></div>
					</div>
					
					<script>
					$("#goCart").click(function() {
						const object = {
								id: 1,
							    title: "미스터 마켓2021",
							    writer: "이한영 외",
							    publisher: "출판사",
							    price: 15300,
							    count: 1,
							    imgLink: "http://image.kyobobook.co.kr/images/book/xlarge/036/x9791190977036.jpg",
							}
							$.ajax({
								url: "<%=application.getContextPath()%>/cart/session-register",
								method: "post",
								data: object,
								success: (data) => {
									if (data) {
										if (data.indexOf("alert.jsp") != -1) {
											$("#goCartResult").html(data);
											$("#goCartResult").css({"color": "red"});
										} else {
											window.location.href = "<%=application.getContextPath()%>/cart/index";
										}
									}
								},
							});
					});
					</script>
				</div>
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			<div class="chooseBox">
				<button id="btnmainInfo" class="btn btn-lg" style="background-color:#917354; color: white; "> 상세정보 </button>
				<button id="btnmemberReview" class="btn btn-lg" style="background-color:#B8A791; color:white ; "> 회원리뷰 </button>
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			<div class="mainInfo">
				<div class ="subInfo" id="intro" style="margin-botton: 20px;"><h4> 책 소개 </h4>	<hr/>
					책정보를 지금은 안필요해서 제거햇음
				</div>
				
				
			</div>
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;">
					<h4> 회원리뷰 </h4><hr/>
				</div>
				
				<div class="reviewform">
					<form enctype="multipart/form-data" name="reviewform" 
							action="<%=application.getContextPath()%>/review/reviewwrite" method="post">
		                  	
		                  	<input id="usersId" name="usersId"   type="hidden" value="seoyeon"/>
		                  	<input id="booksIsbn" name="booksIsbn" type="hidden" value="test"/>
		                  	
		                  	<!-- 각 버튼을 누르면 숫자를 리턴할수 잇게 해야하는,,? 자바스크립트로 구현? -->
		                    <div class="form-group">
		                      <label for="rstars">별점</label>
		                      <input type="number" class="form-control" id="rstars" name="rstars"/>
		                      <small class="form-text text-muted">필수 입력 사항입니다.</small>
		                    </div>
		                    
		                    <div class="form-group">
		                      <label for="rcontent"> 내용 </label>
		                      <textarea id="rcontent" name="rcontent" class="form-control" rows="5" cols="50"></textarea>
		                    </div>
		                  
		                	<button class="btn btn-primary"> 저장</button>
		                	<!-- <a  class="btn btn-primary" href="boardlist2"> 취소</a> -->
		            </form>
				</div>
				
				
			
				<div class="set">
					<div id="pic2"><!-- <img alt="person.png" 
					src="https://cdn.icon-icons.com/icons2/1674/PNG/512/person_110935.png"> -->
					<ul  style="list-style: none; ">
							<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;"> st**ream </div></li>
							<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★★ </div></li>
							<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;"> 2021-01-08 </div></li>
							
					</ul>
					</div>
					<div id="review"><p>
						감수를 한 이가 입시학원 등에서 세계사를 가르쳤다. 한국사를 가르치던 분들이 엮은 책처럼,
						 지은이도 학생들을 가르치면서 얻은 영감 혹은 아이디로 이 책을 엮은 것이라 여겨진다. 
						 키워드는 쉽게, 재미있게, 정확하게 3박자 맞는지 어떤지....이게 이 책의 핵심이지 않을까 싶다.
						 아무튼 세계 도시 30개로 이야기를 풀어낸다는 발상은 참신하다. 
						 내용이야 어찌되었건 간에 세계사를 도시 중심으로 꿰맞춰보기라는 것도 재미있지 않는가,
					</p></div>
					<hr/>
				</div>
				
				<div class="set">
					<div id="pic2">
					<ul  style="list-style: none; ">
							<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;"> ve**bon </div></li>
							<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★★ </div></li>
							<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;"> 2020-12-22 </div></li>
							
					</ul>
					</div>
					<div id="review"><p>
						여러 도시의 이야기들을 주욱 훑어보긴 했지만 아쉽게도 딱 기억에 남거나 인상적인 부분은 찾기 어려운 듯 하다.
						 그나마 "장안"의 이야기가 재미있었던 것 같다. 요즘 읽고 있는 만화가 진나라를 배경으로 하는데, 
						 진나라의 수도인 함양이 결국 장안이 되고 현재에는 위치상 서쪽에 위치하여 서안, 즉 시안이 되었다고 한다. 
						 중국 서쪽 내륙에 위치한 시안은 내가 갖고 있는 이미지와는 다르게 제법 풍요로운 지방인 듯 하다. 
						 뭔가 비도 안오는 메마른 땅의 느낌을 주지만 여러 강이 합류하는 지역으로 농토가 비옥하고 수량이 풍부하다고 한다. 
						 해상 무역에는 적절하지 않지만 과거 실크로드의 출발지점으로 중국의 문명과 다른 세계의 문명들의 교차점이자 출발점이 되었다고 한다.
					</p></div>
					<hr/>
				</div>
				
				<div class="set">
					<div id="pic2">
					<ul  style="list-style: none; ">
							<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;">ho**go95 </div></li>
							<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★☆ </div></li>
							<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;"> 2020-12-20 </div></li>
							
					</ul>
					</div>
					<div id="review"><p>
						우리가 역사를 배우는 방식은 고대문명의 탄생부터 현대까지 지구상의 모든 국가의 역사를 시간대별로 전부 암기하는 방식이다. 
						4대문명이 어디서 탄생하고 몇 년도에는 어디서 무슨 일이 일어나고, 누가 어디를 통일하고.. 
						이런 식으로 전지구 단위로 역사를 배우게 되는데 관심도 없는 나라의 역사를 배우게 되면
						 역사적 의미와 맥락을 모른채 무작정 암기만 하게 되므로 흥미도가 떨어지고, 역사에서 관심이 사라지게 되는 부작용을 가져온다. 
						 그래서 그런 식의 모든 나라의 전시간대별 역사암기가 아닌 하나의 주요 도시의 역사를 통해 세계사를 살펴보며 
						 거기서 전체적인 세계의 역사의 흐름을 이해하자고 한다. 일종의 선택과 집중인셈이다. 
						 이로 인해 역사에 관심을 가지고, 거기에서 다른 도시와 국가적 영역으로 역사적 관점을 확장시켜 나가는 방법을
						  취해보자는 것이 취지이다.
					</p></div>
					<hr/>
				</div>
				
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
			
										
		</div>
	</body>
</html>