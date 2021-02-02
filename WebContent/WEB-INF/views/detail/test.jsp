<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<c:if test="${book.bimgLink==null}"><%=application.getContextPath() %>/books-image?isbn=${book.isbn}</c:if>' 
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
							
							<c:if test="${book.bpublisher!=null}">
								<li><div id="infoL">출판사 :  </div> <div id="infoR">${book.bpublisher}</div></li>
							</c:if>
							<c:if test="${book.btranslator!=null}">
								<li><div id="infoL">역식자 :  </div> <div id="infoR">${book.btranslator}</div></li>
							</c:if>
							
							<li><div id="infoL">지은이 :  </div> <div id="infoR">
								<c:forEach var="writer" items ="${writerlist}">${writer.wname}	&nbsp;</c:forEach>
							</div></li>
											

						</ul>
						<hr/>
					</div>
					
					<div id="detail_info">
						<ul>
							<li><div id="infoL">정가 : </div> <div id="infoR">${book.bprice}원</div></li>
							<li><div id="infoL">판매가격 : </div><div id="infoR">
								<div style="display: inline; font-size: 25px; color: red;">${book.bprice}원</div>
								<div style="display: inline;">[${book.bdiscount}% 할인]</div></div>
								
								</li>
							<li><div id="infoL">배송비 : </div> <div id="infoR">
								<c:if test="${(book.bdeliveryFee == null)||(book.bdeliveryFee == 0)}">무료</c:if>
								<c:if test="${(book.bdeliveryFee != null)&&(book.bdeliveryFee != 0)}">${book.bdeliveryFee}원</c:if>
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
					
					<div class="d-flex">
						<div>
							<button id="goCart" type="button" class="btn btn-lg" 
							style="margin-left: 50px; background-color:#917354; color: white; ">장바구니 가기 </button>
							<div id="goCartResult" style="margin-left: 30px; margin-top: 30px;"></div>
						</div>
						
						<c:if test="${sessionUaid != null && role eq 'admin'}">
							<div>
								<button id="updateBtn" type="button" class="btn btn-lg" 
								style="margin-left: 50px; background-color:#917354; color: white;"
								onclick="updateHref(${book.isbn})">수정</button>
							</div>
							<script>
								const updateHref = function(isbn) {
									location.href = "<%=application.getContextPath()%>/book-admin/update?isbn=" + isbn;
								}
							</script>		
						</c:if>
					</div>
					
					<script>
					$("#goCart").click(function() {
						const amount = $("#amount").text();
						const dto = {
								booksIsbn: "${book.isbn}",
							    ctdiscount: ${book.bdiscount},
							    ctprice: ${book.bprice},
							    ctcount: amount,
							};
						$.ajax({
							url: "<%=application.getContextPath()%>/cart-create",
							method: "post",
							data: dto,
							success: (data) => {
								if (data) {
									if (data.result === "이미 장바구니에 존재합니다.") {
										$("#goCartResult").html(data.result);
										$("#goCartResult").css({"color": "#998064"});
									} else if (data.result === "fail") {
										$("#goCartResult").html(data.result);
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
					<c:forEach var="writer" items ="${writerlist}">
					  	<h5>저자명 :  ${writer.wname}</h5><br/>
						${writer.wcontent}
						<br/><br/><br/>	
				  	</c:forEach>
				</div>
				
				<div class ="subInfo" id="index" style="margin-bottom: 10px;"><h4> 목차 </h4>
				<hr/>
					${book.bindex}
				</div>
				
			</div>
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				
				
				<!-- 여러번 작성하게 하는걸 방지 하려면 어떻게 해야하는거지? -->
				<c:if test="${ordered!=0&&review_count==0}"> <!-- 여기서 리뷰값도 찾아야 하는거지?! -->
					<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
					color: #917354;">
						<h4> 회원리뷰 작성하기 </h4><hr/>
					</div>
					
					<div class="reviewform">
						<form enctype="multipart/form-data" name="reviewform" 
								action="<%=application.getContextPath()%>/review/reviewwrite" method="post">
			                  	
			                  	<input id="usersUid" name="usersUid"   type="hidden" value="${sessionUaid}"/>
			                  	<input id="booksIsbn" name="booksIsbn" type="hidden" value="${book.isbn}"/>
			                  	
			                  	<!-- 각 버튼을 누르면 숫자를 리턴할수 잇게 해야하는,,? 자바스크립트로 구현? -->
			                    <div class="form-group">
			                      <label for="rstar">별점</label>
			                      <input type="number" class="form-control" id="rstar" name="rstar"/>
			                      <small class="form-text text-muted">필수 입력 사항입니다.</small>
			                    </div>
			                    
			                    <div class="d-inline form-group">
			                      <label for="rcontent"> 내용 </label>
			                      <textarea id="rcontent" name="rcontent" class="form-control" rows="5" cols="50"></textarea>
			                      
			                    </div>
			                  
			                	<button class="d-inline btn btn-primary"> 저장</button>
			            </form>
					</div>
				
				</c:if>
				
				
				
				
		<!-- --------------------------------------------------------------------------------------------------------------- -->	
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; color: #917354;">
					<h4> 회원리뷰 </h4><hr/>
				</div>
								
				<c:forEach var="review" items ="${reviewlist}">
				  	<div class="set">
						<div id="pic2"><!-- <img alt="person.png" 
						src="https://cdn.icon-icons.com/icons2/1674/PNG/512/person_110935.png"> -->
						<ul  style="list-style: none; ">
								<li><div style="display:inline-block; width: 40px;" >ID : </div> <div style="display:inline;">${review.usersUid}</div></li>
								<li><div style="display:inline-block; width: 40px;">별점 : </div> <div style="display:inline;">
									<c:if test="${review.rstar==0}"> ☆☆☆☆☆</c:if> 
									<c:if test="${review.rstar==1}"> ★☆☆☆☆</c:if> 
									<c:if test="${review.rstar==2}"> ★★☆☆☆</c:if> 
									<c:if test="${review.rstar==3}"> ★★★☆☆</c:if> 
									<c:if test="${review.rstar==4}"> ★★★★☆</c:if> 
									<c:if test="${review.rstar==5}"> ★★★★★</c:if>  
								</div></li>
								<li><div style="display:inline-block; width: 40px;">날짜 : </div>
									<div style="display:inline;"><fmt:formatDate value="${review.rdate}" pattern="yyyy.MM.dd"/></div>
								</li>
																
						</ul>
						</div>
						<div id="review">
							<p>${review.rcontent}</p>
						</div>	
						<hr/>
						
						
						<c:if test="${review.usersUid==sessionUaid}">
							<button  id="review_edit" class="btn btn-sm" onclick="javascript:func1()"
								style="background-color:#917354; color: white; "> 리뷰 <br/>수정하기 </button>
								<script type="text/javascript">
									function func1(){
										$.ajax({
											url:"<%=application.getContextPath()%>/review/reviewupdate",
											method: "get",
											success:(data) =>{
												$("#reviewUpdate").html(data);
											}
										});												
									};
								</script>
							
							<button id="review_delete" class="btn btn-sm" 
								onclick="location.href='<%=application.getContextPath()%>/review/reviewdelete?param1=${sessionUaid}&param2=${review.booksIsbn}'"
								style="background-color:#B8A791; color:white ; "> 리뷰 <br/> 삭제하기 </button>
						</c:if>
						
					</div>
					<div id="reviewUpdate"> </div>   
			  	</c:forEach>
			  	<!-- --------------------------------------------------------------------------------------------------------------- -->	
			  	<div id="special" class="d-flex justify-content-between align-items-center" >
								
								
					<div>
						<a class="btn btn-outline-warning btn-sm mr-1" href="detail?param1=${BookIsbn}&pageNo=1#special">처음</a>
						
						<c:if test="${pager.groupNo>1}">
							<a class="btn btn-outline-warning btn-sm mr-1" href="detail?param1=${BookIsbn}&pageNo=${pager.startPageNo-1}#special">이전</a>
						</c:if>	
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<c:if test="${i == pager.pageNo}">
								<a class="btn btn-danger btn-sm ml-1" href="detail?param1=${BookIsbn}&pageNo=${i}#special">${i}</a>
							</c:if>
							<c:if test="${i != pager.pageNo}">
								<a class="btn btn-outline-success btn-sm ml-1" href="detail?param1=${BookIsbn}&pageNo=${i}#special">${i}</a>
							</c:if>
						</c:forEach>
						
						<c:if test="${pager.groupNo < pager.totalGroupNo}">
                        			<a class="btn btn-outline-warning btn-sm mr-1" href="detail?param1=${BookIsbn}&pageNo=${pager.endPageNo+1}#special">  다음    </a>
                      		</c:if>
                      
                      		<a class="btn btn-outline-warning btn-sm mr-1"  href="detail?param1=${BookIsbn}&pageNo=${pager.totalPageNo}#special">  맨끝 </a>
					</div>	
					
				</div>
			  	
			
			
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
			
										
		</div>
	</body>
</html>