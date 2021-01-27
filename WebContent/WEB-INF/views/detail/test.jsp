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
					src='
						<c:if test="${book.bimgLink!=null}">${book.bimgLink}</c:if>
						<c:if test="${book.bimgLink==null}">${book.bimgFilename}</c:if>' 
					height="500px">
				</div>
				
				<div class="detail" id="info">
					<div id="detail_info">
						<ul>
							<h2>${book.btitle}</h2>
							<h4>${book.bsubTitle}
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								</h4>
							
							<li><div id="infoL">지은이 :  </div> <div id="infoR">이한영, 김효진 , 이다솔 외</div></li>
											

						</ul>
						<hr/>
					</div>
					
					<div id="detail_info">
						<ul>
							<li><div id="infoL">정가 : </div> <div id="infoR">${book.bprice}원</div></li>
							<li><div id="infoL">판매가격 : </div><div id="infoR">
								<div style="display: inline; font-size: 25px; color: red;">${book.bfprice}원</div>
								<div style="display: inline;">[${book.bdiscount}% 할인]</div></div>
								
								</li>
							<li><div id="infoL">배송비 : </div> <div id="infoR">
								<c:if test="${(book.bdeliveryFee == null)||(book.bdeliveryFee == 0)}">무료</c:if>
								<c:if test="${(book.bdeliveryFee != null)||(book.bdeliveryFee != 0)}">${book.bdeliveryFee}원</c:if>
							</div></li>
							
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
					${book.bcontent}
				</div>
				
				<div class ="subInfo" id="writer" style="margin-botton: 20px;"><h4> 저자 </h4>	<hr/>
					작가테이블에서 불러오기 아직 안했음
				</div>
				
				<div class ="subInfo" id="index" style="margin-bottom: 10px;"><h4> 목차 </h4>
				<hr/>
					${book.bindex}
				</div>
				
			</div>
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;">
					<h4> 회원리뷰 작성하기 </h4><hr/>
				</div>
				
				
				
				<div class="reviewform">
					<form enctype="multipart/form-data" name="reviewform" 
							action="<%=application.getContextPath()%>/review/reviewwrite" method="post">
		                  	
		                  	<input id="usersId" name="usersId"   type="hidden" value="syeon"/>
		                  	<input id="booksIsbn" name="booksIsbn" type="hidden" value="ISBN1"/>
		                  	
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
				
				
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;">
					<h4> 회원리뷰 </h4><hr/>
				</div>
				
				
				
				
				
				<c:forEach var="review" items ="${reviewList}">
				  	<div class="set">
						<div id="pic2"><!-- <img alt="person.png" 
						src="https://cdn.icon-icons.com/icons2/1674/PNG/512/person_110935.png"> -->
						<ul  style="list-style: none; ">
								<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;"> ${review.usersId}</div></li>
								<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;"> ★★★★★ </div></li>
								<li><div style="display:inline-block; width: 40px;">날짜 : </div> <div style="display:inline;"> ${review.rdate} </div></li>
								
						</ul>
						</div>
						<div id="review"><p>
							${review.rcontent}
						</p></div>
						<hr/>
					</div>	    
			  	</c:forEach>
				

			
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
			
										
		</div>
	</body>
</html>