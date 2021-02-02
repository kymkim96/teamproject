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
				<span id="home_link">홈</span> <span>></span> <span>쇼핑카트</span> <span>></span> <span>주문/결제</span> <span>></span> <span>주문완료</span>
			</div>

			<!-- 안내 제목 -->
			<div class="general_info">
				<span class="shopping_cart_title">주문완료</span> <span>기한 안에 입금하지 않으면 주문이 자동 취소됩니다.</span> <img
					src="<%=application.getContextPath()%>/resources/img/process3.PNG"
					width="300px">
			</div>
			
			<!-- 쇼핑카트 선택 상품 목록 -->
			<div class="cart_view">
			
				<div class="cart_view_title">
					<span><b> 주문 내역 </b></span>
				</div>
				
				<c:forEach var="order" items="${list}">
							
				
				<div class="table_container">
					<table class="table table-striped" style="width: 960px">
						<thead>
							<tr>
								<td colspan="7">
									<div>
										<div class="item_count_result">주문날자: <fmt:formatDate value="${order.odate}" pattern="YYYY-MM-dd"/></div>
										<div class="item_count_result">수량: ${order.ototal}종</div>
										<div class="item_price_result">
											<span style="color: tomato">총 결제 금액: ${order.oamount}원</span>
										</div>
									</div>
								</td>
							</tr>
							
							<tr>
								<th scope="col">상품명</th>
								<th scope="col">수령예상일</th>
								<th scope="col">판매가</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
								
								
							</tr>
						</thead>
						<tbody>
							
								<c:forEach var="odItem" items="${order.odlist}">
									<tr>
										<!--  1.상품명------------------------------------------------------------------------- -->
										<td>
											<div class="cart_product_name">
												<c:if test="${odItem.bimgLink == null}">
													<img class="detail_1_link" 
														 src="<%=application.getContextPath() %>/books-image"
														width="50px" alt="default image">
												</c:if>
												
												<c:if test="${odItem.bimgLink != null}">
													<img class="detail_1_link" src="${odItem.bimgLink}"
														width="50px" alt="default image">
												</c:if>
												<div style="margin-left: 5px">
													<div class="detail_1_link">${odItem.btitle}</div>
													<div class="d-flex">
														<span class="mr-2">작가</span>
														<span class="mr-2">|</span>
														<span>${odItem.bpublisher}</span>
													</div>
												</div>
											</div>
										</td>
										
										<!--  2.수령예상일 ------------------------------------------------------------------------- -->
										<td class="align-middle">
											<%
											Calendar calendar = Calendar.getInstance();
											calendar.setTime(new Date());
											calendar.add(Calendar.DATE, 2);
											%> <fmt:formatDate
												value="<%=calendar.getTime()%>" pattern="YYYY-MM-dd" />
										</td>
										
										<!--  3.판매가 ------------------------------------------------------------------------- -->
										
										<td class="align-middle">${odItem.otprice}</td>
										
										<!--  4.수량 ------------------------------------------------------------------------- -->
										
										<td class="align-middle">${odItem.otcount}</td>
										
										
										<!--  5.합계 ------------------------------------------------------------------------- -->
										<td class="align-middle" id="resultPrice">${odItem.otprice * odItem.otcount}</td>
										
									</tr>
								</c:forEach>
							

							<c:if test="${size <= 0}">
								<tr>
									<td colspan="7">현재 주문한 품목이 없습니다</td>
								</tr>
							</c:if>
							
							<tr>
								<td colspan="7">
									<div>
										<div class="item_price_result">
											<span> 배송지: ${order.oaddress}</span> 
								
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				</c:forEach>
			</div>

			<div class="button_line">
				<button type="button" id="list_home_link"
					class="btn btn-outline-secondary btn-lg">쇼핑 계속하기</button>
			</div>
		</div>

		<%@ include file="/WEB-INF/views/common/Footer.jsp"%>
	</div>
</body>
</html>