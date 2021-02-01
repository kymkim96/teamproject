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
				<span class="shopping_cart_title">쇼핑카트</span> <span>최대 90일까지
					보관되며, 이후에는 위시리스트에 자동 보관됩니다.</span> <img
					src="<%=application.getContextPath()%>/resources/img/process.PNG"
					width="300px">
			</div>

			<!-- 쇼핑카트 선택 상품 목록 -->
			<div class="cart_view">
				<div class="cart_view_title">
					<span><b>일반 상품</b></span>
				</div>
				<div class="table_container">
					<table class="table table-striped" style="width: 960px">
						<thead>
							<tr>
								<th scope="col">상품명</th>
								<th scope="col">수령예상일</th>
								<th scope="col">판매가</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
								<th scope="col">담기/삭제</th>
								<th scope="col"><input type="checkbox" id="header_item_checkbox"/></th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${size > 0}">
								<c:forEach var="cartItem" items="${cartItems}">
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
										<td class="align-middle">${cartItem.ctprice}</td>
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
							</c:if>

							<c:if test="${size <= 0}">
								<tr>
									<td colspan="7">현재 장바구니에 저장된 품목이 없습니다</td>
								</tr>
							</c:if>

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

			<!-- 쇼핑카트 총 주문금액 표시 -->
			<div class="price_table">
				<div>
					<b>쇼핑카트 총 주문 금액</b>
				</div>
				<div class=".container-fluid">
					<div class="row">
						<div class="col-2 price_header">수량</div>
						<div class="col price_header">상품정가</div>
						<div class="col price_header">상품할인</div>
						<div class="col price_header">배송비</div>
						<div class="col price_header" style="border-right: none">
							주문금액 합계</div>
					</div>
					<div class="row">
						<div class="col-2 price_content">1종(1개)</div>
						<div class="col price_content">
							<b>13,500원</b>
						</div>
						<div class="col price_content">
							<b>1,350원</b>
						</div>
						<div class="col price_content">
							<b>0원</b>
						</div>
						<div class="col price_content" style="border-right: none">
							<b style="color: tomato">12,150원</b>
						</div>
					</div>
					<div class="row">
						<div class="col price_accumulate">
							<div></div>
							<div></div>
							<p>적립 가능액 : 상품적립금 0원</p>
							<ul>
								<li>5만원 이상 추가적립/멤버십/바로온2% 적립금은 비도서, 뷰티 구매 시 적용됩니다. (도서 제외)</li>
								<li>적립가능액은 쿠폰, 적립금등 보조결제 수단 따라 약간의 금액 차이가 있을 수가 있습니다.</li>
								<li>적립금 지급시기는 구매완료 시점에 자동 지급 됩니다.</li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col expected_date_info">
							<p>수령 예상일 :</p>
							<ul>
								<li>출고일이 다른 상품을 함께 주문하시면, 출고일이 가장 늦은 상품을 기준으로 일괄 배송합니다.</li>
								<li>같은 상품을 여러 개 주문하실 경우 추가 재고 확보에 시간이 더 걸릴 수 있으므로 예상 수령일보다
									배송일이 2-3일 더 지연되기도 합니다.</li>
								<li>국내 수령지 기준이며, 해외배송은 배송방법에 따라 수령일이 최대 14일까지 늘어날 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="button_line">
				<a href="<%=application.getContextPath()%>/order/content"><button type="button" id="order_confirm"
					class="btn btn-outline-secondary btn-lg">주문하기</button></a>
				<button type="button" id="list_home_link"
					class="btn btn-outline-secondary btn-lg">쇼핑 계속하기</button>
			</div>
		</div>

		<%@ include file="/WEB-INF/views/common/Footer.jsp"%>
	</div>
</body>
</html>