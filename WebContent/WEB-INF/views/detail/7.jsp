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
					src="http://image.kyobobook.co.kr/images/book/xlarge/681/x9788954610681.jpg" height="500px">
				</div>
				
				<div class="detail" id="info">
					<div id="detail_info">
						<ul>
							<h2> 은교</h2>
							
							
							<li><div id="infoL">지은이 :  </div> <div id="infoR"> 박범신</div></li>
							<li><div id="infoL">출판사 :  </div> <div id="infoR"> 문학동네</div></li>				

						</ul>
						<hr/>
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
								id: 7,
							    title: "은교",
							    writer: "박범신",
							    publisher: "문학동네",
							    price: 15300,
							    count: 1,
							    imgLink: "http://image.kyobobook.co.kr/images/book/xlarge/681/x9788954610681.jpg",
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
					네가 가장 예뻤을 때, 나는 너를 사랑했다!<br/><br/>
					존재의 내밀한 욕망과 그 근원을 들여다본 박범신의 신작 장편소설『은교』
					. 위대한 시인이라고 칭송받던 이적요가 죽은 지 일 년, Q변호사는 유언에 따라 그가 남긴 노트를 공개하기로 한다.
					 하지만 노트에는 이적요가 열일곱 소녀인 한은교를 사랑했으며, 제자였던 베스트셀러 '심장'의 작가 서지우를 죽였고, 
					 '심장'을 비롯한 서지우의 모든 작품을 이적요가 썼다는 충격적인 고백이 담겨 있었다. 이적요 기념관 설립이 한창인 
					 시점에서 공개를 망설이던 Q변호사는 은교를 만나고, 서지우 역시 기록을 남겼다는 사실을 듣는다. 
					 은교에게서 서지우의 디스켓을 받은 Q변호사는 이적요와 서지우의 기록을 통해 그들에게 벌어졌던 일들을 알게 되는데...
					북소믈리에 한마디!<br/><br/>
					자신과 대비되는 은교의 젊음을 보며 관능과 아름다움을 느끼는 이적요,
					 그런 이적요의 눈빛을 깨닫고 은교에 대한 집착이 커져가는 서지우. 
					 정에 넘치던 두 사람의 관계는 은교를 둘러싸고 조금씩 변해가며 아슬아슬하게 유지된다. 
					 두 남자와 한 여자의 얽혀 있는 사랑을 그리고 있지만, 작가는 그들의 모습을 통해 '갈망'을 이야기한다. 
					 남자와 여자, 젊음과 늙음, 시와 소설, 욕망, 죽음 등에 대한 존재론적인 질문을 던지고 있다. 
					 이 작품은 평생 원고지를 고집했던 작가가 처음으로 컴퓨터 자판을 사용해 쓴 소설이자,
					  개인 블로그에 연재하면서 한 달 반 만에 완성한 소설이다.
					<br/><br/>
				</div>
				<div class ="subInfo" id="writer" style="margin-bottom: 10px;"><h4> 저자 </h4><hr/>
					
					박범신 <br/>
					<br/>
					국내작가 > 문학가 > 현대문학가＞소설가<br/>
					출생지 : 충청남도 논산<br/>
					출생 : 1946년<br/>
					데뷔년도 : 1973년<br/>
					데뷔내용 : 여름의 잔해<br/>
					충남 논산 출생 소설가인 그는 빛나는 상상력과 역동적 서사가 어우러진 화려한 문체로
					 근대화과정에서 드러난 한국사회의 본질적인 문제를 밀도 있게 그려낸 다수의 작품을 발표하며 수많은 독자들을 사로잡았다.
					  그러나 인기 절정의 작가였던 그는 1993년 돌연 문학과 삶과 존재의 문제에 대한 겸허한 자기성찰과 사유의 시간을 갖기
					   위해 절필을 선언하고 깊은 침묵에 들어가 커다란 파장을 불러왔다. 1996년 유형과도 같은 오랜 고행의 시간 끝에 작품 
					   활동을 재개한 그는 영혼의 리얼리티를 추구하는 작품세계로 문학적 열정을 새로이 펼쳐 보이고 있다
					<br/><br/>
				</div>
				
				<div class ="subInfo" id="index" style="margin-bottom: 10px;"><h4> 목차 </h4>
				<hr/><p>
					프롤로그 - 시인이 마지막 남긴 노트 이적요 시인 <br/><br/>
					Q변호사 1<br/>
					시인의 노트 창槍<br/>
					시인의 노트 쌍꺼풀<br/>
					Q변호사 2<br/>
					시인의 노트 등롱燈籠<br/>
					시인의 노트 심장<br/>
					Q변호사 3<br/>
					시인의 노트 나의 처녀-은교에게<br/>
					시인의 노트 육체-풀과 같은<br/>
					시인의 노트 의심<br/>
					Q변호사 4<br/>
					서지우의 일기 류머티즘<br/>
					시인의 노트 우단 토끼<br/>
					시인의 노트 노랑머리<br/>
					Q변호사 5<br/>
					서지우의 일기 불안<br/>
					시인의 노트 침묵<br/>
					시인의 노트 범죄<br/>
					서지우의 일기 수상한 평화<br/>
					시인의 노트 분노<br/>
					서지우의 일기 반역<br/>
					시인의 노트 선고<br/>
					서지우의 일기 헌화가<br/>
					시인의 노트 꿈, 호텔 캘리포니아<br/>
					시인의 노트 집행<br/>
					Q변호사 6<br/>
					시인의 노트 은교에게 쓰는 마지막 편지<br/><br/>
					에필로그 - 시인이 마지막 남긴 노트 Q변호사<br/>
					작가의 말 - 돌아온 내 젊은 날<br/>
				</p>
					
				</div>
				
				
			</div>
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;"><h4> 회원리뷰 </h4><hr/>
				
				</div>
			
				<div class="set">
					<div id="pic2">
					<ul  style="list-style: none; ">
							<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;"> sk**nsms </div></li>
							<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★☆ </div></li>
							<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;">2019-02-06 </div></li>
							
					</ul>
					</div>
					<div id="review"><p>
						소설 은교는 시인 이적요(寂寥)의 인생을 통들어 단 한번의 욕망이 늦게(?) 찾아와 그의 필명적요,
						고요하고 쓸쓸한 그의 내면을 더 이상 떠들썩할 수 없게 만드는 이야기이다.
						더불어 아니 어쩌면 더욱 중요해 보이는 것은 그로 인한 이적요와 서지우의 관계의 뒤틀림일 수도 있다.
						이 모든 사건의 발달은 은교가 이적요의 집 데크의 한가로이 따스한 햇볕을 받는 것으로 시작한다.
						자고 있던 은교가 이적요와의 만남으로 깨어나면서 이야기는 시작된다.이것은 마치 이적요의 잠자고 
						있던 욕망이 은교의 기상과 더불어 눈을 뜨는 것처럼 느껴진다.이적요는 죽어가는 노인과 생생하게
						 발화하는 은교의 그것과의 거리가 마치 한국과 한국의 대척점인 아르헨티나와의 거리처럼 느껴진다.
						 그럼에도 불구하고 자신의 인생에서 단 한 번 찾아온 욕망은 어찌하지 못하고 은교를 향해 달음박질한다.
						 그 와중에 자신의 시중을 들어주는 권력 관계로 볼 때 자신보다 아래인 서지우와의 은교를 둘러싼 삼각관계에 놓인다
						 .심지어 그 관계에서는 젊은 서지우가 자신보다 위다.결국 이들의 관계는 이적요가 서지우가 타고 갈 차를 
						 고의적으로 망가뜨려 죽게 만듦으로써 절망에 빠진다.가장 사랑하는 제자를 자신이 죽이게 만들게 되고
						  이적요 또한 스승이 제자의 뒤를 따르게 됨으로써 이 모든 이야기처럼 ‘뒤집힌’ 이야기를 남긴다.
					</p></div>
					<hr/>
				</div>
				
				
				<div class="set">
					<div id="pic2">
					<ul  style="list-style: none; ">
							<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;"> me**y </div></li>
							<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★★ </div></li>
							<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;"> 2018-07-02  </div></li>
							
					</ul>
					</div>
					<div id="review"><p>
							마지막 페이지를 넘기고 보니 이 책이 주인공들의 사랑의 삼각관계의 이야기였다는 것이 너무나 놀랍고 감탄스러웠다.
							 박범신이라는 작가에 대해서 더 깊이 알고 싶은 생각도 들었다. 작가의 문체가 너무나 섬세하고 디테일한데 이런
							  수준의 글을 많이 접해보지는 못했는데 한 글자 한 글자가 깊이가 있었다. 소설을 읽을 때에도 문학상을 받은 작품을
							   위주로 구매해 보는 시도를 해야겠다. 은교라는 10대 소녀와 70대의 시인과 40대의 제자작가의 삼각관계이고 그중
							    핵심 플롯은 노인과 소녀의 아슬아슬한 줄타기 사랑이다. 욕망을 넘어서는 사랑에 대해서도 한 문구가 나오기도 하다. 
							    시인과 제자의 부성애와 같은 사랑도 있다. 그 관계의 틈을 만들고 들어가고 싶어 하는 은교의 마음 또한 신선하다. 
							    죽음과 삶, 늙음과 젊음을 매우 대조적으로 비교하는 부분도 인상적이다.
							 
							
							그리고 나는 그것을 보았다. 창이었다. 창 끝이 쇄골 가까이 솟아 있었다.
							 셔츠의 브이라인 아래에서부터 직립해 올라온 푸른 창날에 햇빛이 닿고 있었다. 나도 모르게 고인 침이 꿀꺽 목울대를 넘어갔다.
							  가슴에 그려넣은 창의 문신이라니. 그렇다면 창의 손잡이는 셔츠 속에 감춰진 젖가슴이 단단히 거머쥐고 있을 터였다.
							쇄골을 치고 나온 땀방울 하나가 한순간 창 끝을 적시면서 또르르 굴러 셔츠 안으로 재빨리 흘러들어갔다. 우주의 비밀을 본 것 같았다.
					</p></div>
					<hr/>
				</div>
				
				
				
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
			
										
		</div>
	</body>
</html>