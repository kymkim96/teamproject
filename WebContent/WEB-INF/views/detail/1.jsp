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
				“2021년, 새로운 주도주를 준비하라!”<br/><br/>

				구독자 85만 명, 누적 조회 1억 5000만 회<br/>
				경제 분야 압도적 1위 유튜브 <삼프로TV>와 함께한 투자 전망 프로젝트<br/>
				★★★★★ 2021년, 투자하기 전 반드시 읽어야 할 책 ★★★★★<br/><br/>
				
				2020년은 그야말로 유례없는 주식 열풍이 분 해다. 
				사람들은 저축도 헐고, 때로는 부동산도 팔아서 주식에 뛰어들었고,
				 심지어는 대출까지 받아서 투자를 했다. 2020년 상반기에 이미 주식
				 거래대금은 2019년의 연간 거래대금을 뛰어넘었다. 코스피지수의 등락
				 폭도 드라마틱했다. 코로나19 쇼크로 3월 코스피지수는
				 2090포인트에서 1439포인트까지 불과 11일 만에 30% 넘게 폭락했다. 
				하지만 중앙은행과 정부의 양적완화와 재정 정책으로 증시는 빠르게
				 회복해 강세 흐름을 보여줬고, 11월 들어서는 2500포인트를 넘어 
				최고점을 향해 가고 있다.
				</div>
				<div class ="subInfo" id="writer" style="margin-bottom: 10px;"><h4> 저자 </h4><hr/>
				김효진<br/><br/>

				ㆍ[저서]미스터 마켓2021<br/>
				ㆍ[저서]나는 부동산 싸게 사기로 했다<br/>
				장녀이자, 맏며느리고, 올해로 다섯 살 그리고 세 살이 된 두 미남이를 둔 엄마이다
				. 동갑내기 남편과 맨주먹으로 결혼생활을 시작한 용감한 부인이기도 하다. 
				첫째 미남이와 둘째 미남이가 커가는 모습을 지켜보면서 한 동네에 
				그것도 ‘내 집’에 안착하고 싶은 마음이 커지게 되었다. 그리고 어느새 
				주위 친구들이 집주인이 된 모습을 보며 ‘내 집 마련’에 대한 막연한
				 불안감을 키우기도 했다.
				내 집, 단지 ‘느낌’만으로 전 재산을 올인해가며 마련할 수는 없다.<br/><br/>
				그래서 결정했다. 월급 모아서 알뜰살뜰 살아보자는 순수한 마음은 집어치우고, 
				증권사에서 10년 넘게 거시경제를 분석한 내공을 한국 부동산에 쏟아 보기로.
				이코노미스트로서 그놈의 ‘부동산’을 낱낱이 해부해 내 집 마련을 목표로 
				하는 사람들에게 도움을 주고자 다양한 데이터를 바탕으로 한 분석을 철저히
				 실행에 옮기고 있는 중이다.
				김효진은 성균관대학교와 연세대학교에서 경제학과 정치학을 공부했다. 
				신영증권을 거쳐 동부, SK증권에서 이코노미스트(Economist)로
				 10년 넘게 근무했으며, 현재에도 기업 연구소의 이코노미스트로 활동 중이다.<br/><br/><br/><br/>
				
				
				
				이한영<br/><br/>
				
				ㆍ[저서]미스터 마켓2021<br/>
				DS자산운용에서 주식운용본부장을 맡고 있는 펀드매니저다. 
				금융기관의 고유자금 운용부터 시작해 운용사에서 롱쇼트(Long-short)펀드,
				 주식형 공모펀드, 연기금 일임펀드 등을 운용했으며, 
				현재는 전문 사모 헤지펀드를 운용하고 있다. 2005년부터 바이사이드(Buy-side) 
				펀드매니저로만 활동하고 있으며, 주식시장에서 운용 가능한 모든 
				형태의 자산을 운용해본 경험이 최대 강점으로 평가받는다. 2020 
				대한민국펀드대상 전문 사모 부분 대상 그리고 사모 부문 올해의 
				펀드매니저 상을 수상했다.<br/><br/><br/><br/>
				
				
				이다솔<br/><br/>
				
				ㆍ[저서]미스터 마켓2021<br/>
				한성과학고와 KAIST를 졸업하고 한화투자증권에 애널리스트로 입사해
				 리서치센터에서 7년간 기업 분석 업무를 담당했다. 이후
				 브레인자산운용에서 펀드매니저로 3년간 근무했으며, 
				현재는 메리츠증권 강남금융센터 8지점에서 PB로 근무 중이다. 
				애널리스트 시절 매일경제·한국경제 선정 베스트 애널리스트에 
				수차례 이름을 올린 바 있으며, 2019년 상반기 한경스타워즈 
				실전투자대회에 동료들과 출전해(팀명 강팔) 1위를 했다. 
				애널리스트, 펀드매니저, PB 등을 거치며 시장을 다양한 시각에서 
				바라볼 수 있게 되었고, 평생 투자자로 살기 위해 노력하고 있다."<br/><br/><br/>

				</div>
				
				<div class ="subInfo" id="index" style="margin-bottom: 10px;"><h4> 목차 </h4>
				<hr/><p>
				서문 많은 변수가 도사리는 여정을 앞두고 꼭 숙지해야 할 가이드북<br/><br/>
				
				1장 우리가 해야 할 투자의 방향은 명확하다 _ 이한영<br/>
				2장 무엇이 주도주를 결정하는가? _ 김효진<br/>
				3장 투자도 계절의 변화를 준비해야 할 때 _ 이다솔<br/>
				4장 주식의 시대, 새로운 밸류에이션으로 승부하라 _ 이효석<br/>
				5장 어떤 업종, 어떤 종목에 투자할까? _ 염승환<br/>
				
				</p>
					
				</div>
				
				
			</div>
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;"><h4> 회원리뷰 </h4><hr/>
				
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