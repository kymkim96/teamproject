<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Million Dreams</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/style_sigyung.css">
</head>
<body>
	<div id="layout">
		<%@ include file="/WEB-INF/views/common/Header.jsp"%>

		<div class="content">
			<!-- 홈 계층 메뉴바 -->
			<div class="menubar">
				<span id="home_link">홈</span> <span>></span> <span>쇼핑카트</span>
			</div>

			<!-- 안내 제목 -->
			<div class="general_info">
				<span class="shopping_cart_title">주문 / 결제</span> 
				<span><br></span> <img
					src="<%=application.getContextPath()%>/resources/img/process_order.PNG"
					width="300px">
			</div>

			<!-- 쇼핑카트 선택 상품 목록 -->
			<div class="cart_view">
				
				<div class="cart_view_title">
					<span><b>주문상품 </b></span>
				</div>
				
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
					color: #917354;">
						<h4> 1. 주문 상품 확인  </h4>
				</div>
				
				<div class="table_container">
					<table class="table table-striped" style="width: 960px">
						<thead>
							<tr>
								<th scope="col">주문상품</th>
								<th scope="col">주문날짜</th>
								<th scope="col">주문금액</th>
								<th scope="col">수량</th>
								<th scope="col">배송비</th>
								<th scope="col">주문금액합계</th>
								
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cartItem" items="${cartItemlist}">
										<tr>
											<td>
												<div class="cart_product_name">
													<c:if test="${cartItem.bimgLink == null}">
														<img class="detail_1_link" 
															 src="<%=application.getContextPath() %>/books-image"
															width="50px" alt="default image">
													</c:if>
													
													<c:if test="${cartItem.bimgLink != null}">
														<img class="detail_1_link" src="${cartItem.bimgLink}"
															width="50px" alt="default image">
													</c:if>
													<div style="margin-left: 5px">
														<div class="detail_1_link">${cartItem.btitle}</div>
														<div class="d-flex">
															<span class="mr-2">작가</span>
															<span class="mr-2">|</span>
															<span>${cartItem.bpublisher}</span>
														</div>
													</div>
												</div>
											</td>
											
											<td class="align-middle">
												<%
												Calendar calendar = Calendar.getInstance();
												calendar.setTime(new Date());
												calendar.add(Calendar.DATE, 2);
												%> <fmt:formatDate
													value="<%=calendar.getTime()%>" pattern="YYYY-MM-dd" />
											</td>
											
											<td class="align-middle">${cartItem.ctprice}${cartItem.ctcount}</td>
											<td>
												<div>
													<input type="number" id="item_count" name="item_count"
														value="${cartItem.ctcount}" />
													<button type="button"
														class="btn btn-outline-secondary btn-sm" id="countRefresh">수정</button>
												</div> 
												<script>
													<%--
													수량 비 합계 계산
													c:out 태그는 EL을 자바스크립트 변수에 대입할 수 있게 해줌
													--%>
			                                    	/* $(() => {
				                                    	$("#countRefresh").click(() => {
				                                    		const price = "<c:out value='${requestDto.price}'/>";
				                                    		const count = $("#item_count").val();
				                                    		const result = price * count;
				                                    		$("#resultPrice").text(result.toString());
				                                    	});
			                                    	}); */
				                                </script>
											</td>
											<td class="align-middle" id="resultPrice">${cartItem.ctprice * cartItem.ctcount}</td>
											<td>
												<div>
													<button id="button_wishlist"
														class="btn btn-outline-secondary btn-sm">위시리스트</button>
													<button type="button"
														class="btn btn-outline-secondary btn-sm"
														id="sessionDeregister${cartItem.ctid}">삭제</button>
												</div>
												<%-- <script>
													id = "<c:out value='${requestDto.id}'/>";
													console.log(id);
													console.log(`${id}`);
													
			                                    	$(`#sessionDeregister${id}`).click(function() {
			                                    		$.ajax({
			                                    			url: "<%=application.getContextPath()%>/cart/session-deregister",
			                                    			method: "post",
			                                    			data: {
			                                    				id: "<c:out value='${requestDto.id}'/>"
			                                    			},
			                                    		});
			                                    		window.location.href = "<%=application.getContextPath()%>/cart/index";
			                                    	});
				                                </script> --%>
											</td>
											<td class="align-middle"><input type="checkbox"
												class="cart_item_checkbox" name="cart_item_checkbox" />
											</td>
											
											<script>
												$("#header_item_checkbox").click(() => {
													if (event.target.checked) {
														$(".cart_item_checkbox").prop("checked", true);
													} else {
														$(".cart_item_checkbox").prop("checked", false);
													}
												})
											</script>
										</tr>
									</c:forEach>

							

							<tr>
								<td colspan="7">
									<div>
										<div class="item_count_result">수량: 1종(1개)</div>
										<div class="item_price_result">
											<span>총 상품 금액: ${sumPrice}원</span> <img
												src="<%=application.getContextPath()%>/resources/img/ico_cart_plus.gif">
											<span>배송비: 0원</span> <img
												src="<%=application.getContextPath()%>/resources/img/ico_cart_same.gif">
											<span style="color: tomato">주문금액 합계: 원</span>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
					color: #917354;">
						
			</div>
			<div class="cart_view">
				
				
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
					color: #917354;">
						<h4> 2. 주문자 정보 및 배송지 정보  </h4>
				</div>
				
				<div class="table_container">
					<table class="table table-striped" style="width: 960px">
					</table>
					
					
					
					<form enctype="multipart/form-data" name="orderform" 
							action="<%=application.getContextPath()%>/order/content" method="post">
		                  	<!-- action="<%=application.getContextPath()%>/order/content?orderStatus=1" method="post"> -->
		                  	<input id="usersUaid" name="usersUaid"   type="hidden" value="${sessionUaid}"/>
		                  	<input id="ototal" name="ototal" type="hidden" value="${5000}"/><!-- 하드코딩 -->
		                  	<input id="oamount" name="oamount" type="hidden" value="${5}"/><!-- 하드코딩 -->
		                  	
		                    
		                    <div class="form-group">
		                      <label for="oaddress"> 배송지 정보 </label>
		                      <textarea id="oaddress" name="oaddress" class="form-control" rows="5" cols="50"></textarea>
		                    </div>
		                  
		                  
		                	<div class="button_line">
								<a href="<%=application.getContextPath()%>/order/content1"><button type="button" id="pay_confirm"
									class="btn btn-outline-secondary btn-lg">결제하기</button></a>
								<a href="<%=application.getContextPath()%>/cart/cart"><button type="button" id="back_cart"
									class="btn btn-outline-secondary btn-lg"> 장바구니로 돌아가기</button></a>
							</div>
							<!-- 
							<script type="text/javascript">
								$(()=>{
									$("#back_cart").click(()=>{
										${orderStatus=0};
									});
									$("#pay_confirm").click(()=>{
										${orderStatus=0};
									});
								});
							</script>	  -->               	
		            </form>
			        
				</div>
			</div>

			
		</div>

		<%@ include file="/WEB-INF/views/common/Footer.jsp"%>
	</div>
</body>
</html>