<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> 주문확인/결제하기 </title>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_sigyung.css">
	</head>
	
	<body>
		<div id="layout">
			<%@ include file="/WEB-INF/views/common/Header.jsp"%>
	
			<div class="content">
				<!-- 홈 계층 메뉴바 -->
				<div class="menubar">
					<span id="home_link">홈</span> <span>></span> <span>쇼핑카트</span><span>></span> <span>주문/결제 하기</span>
				</div>
	
				<!-- 안내 제목 -->
				<div class="general_info">
					<span class="shopping_cart_title">주문 / 결제</span> 
					<span><br></span> <img
						src="<%=application.getContextPath()%>/resources/img/process_order.PNG"
						width="300px">
				</div>
				
				<!-- 쇼핑카트 선택 상품 목록 -->
				<form enctype="multipart/form-data" name="addorder" 
									action="<%=application.getContextPath()%>/order/addorder" method="post">
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
										<input type="hidden" name="ctid" value="${cartItem.ctid}">
																
										<tr>
											<!-- ------------------------------------------------------------------- -->
											<td>
												<div class="cart_product_name">
													<c:if test="${cartItem.bimgLink == null}">
														<img class="detail_1_link" 
															 src="<%=application.getContextPath() %>/books-image?isbn=${cartItem.isbn}"
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
												<fmt:formatDate
													value="<%=new Date()%>" pattern="YYYY-MM-dd" />
											</td>
											<td class="align-middle">
												<fmt:formatNumber 
													value="${cartItem.ctprice}"
													/>원
											</td>
											<td class="align-middle">
												<input type="hidden" class="item_count" value="${cartItem.ctcount}">
												${cartItem.ctcount}개
						       					</td>
											<td class="align-middle">
												<c:if test="${sumAmount >= 10000}">
													만원이상 배달료 무료
												</c:if>
												<c:if test="${sumAmount < 10000}">
													<fmt:formatNumber 
													value="${deliveryFee}"
													/>원
												</c:if>
											</td>
											<td class="align-middle">
												<fmt:formatNumber 
														value="${cartItem.ctprice * cartItem.ctcount + deliveryFee}"
														/>원
											</td>
										</tr>
									</c:forEach>
									
									<tr>
										<td colspan="7">
											<div>
												<div class="item_count_result">수량: ${size}종(<span class="countAll"></span>개)</div>
												<script>
													$(() => {
														let countAll = 0;
														const item_counts = $(".item_count");
														for (let i=0; i<item_counts.length; i++) {
															countAll += parseInt(item_counts.get(i).value);
														}
														$(".countAll").html(countAll);
														$("#ototal").val(countAll);
														$("#oamount").val(${sumAmount - discountPrice + deliveryFee});
													})
												</script>
												<div class="item_price_result">
													<span>총 상품 금액: ${sumAmount}원</span> <img
														src="<%=application.getContextPath()%>/resources/img/ico_cart_plus.gif">
													<span>
														배송비:
														<fmt:formatNumber 
															value="${deliveryFee}"
														/>원
													</span>
													<img src="<%=application.getContextPath()%>/resources/img/ico_cart_same.gif">
													<span style="color: tomato">주문금액 합계: 
														<fmt:formatNumber 
															value="${sumAmount + deliveryFee}"
															/>원
													</span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
					<div class="cart_view">
						<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
							color: #917354;">
							<h4> 2. 주문자 정보 및 배송지 정보  </h4>
						</div>
						
						<div class="table_container">
		                  	<input id="usersUaid" name="usersUaid"   type="hidden" value="${sessionUaid}"/>
		                  	<input id="ototal" name="ototal" type="hidden" value="200"/><!-- 하드코딩 -->
		                  	<input id="oamount" name="oamount" type="hidden" value="100000"/><!-- 하드코딩 -->
		                    
		                    <div class="form-group">
		                      <label for="oaddress"> 배송지 정보 </label>
		                      <textarea id="oaddress" name="oaddress" class="form-control" rows="5" cols="50"></textarea>
		                    </div>
						</div>
					</div>
					
					<div class="price_table" style="margin: 0px;">
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
								<div class="col-2 price_content">${size}종(<span class="countAll">0</span>개)</div>
								<div class="col price_content">
									<b>
										<fmt:formatNumber 
										value="${sumAmount}"
										/>원
									</b>
								</div>
								<div class="col price_content">
									<b>
										<fmt:formatNumber 
										value="${discountPrice}"
										/>원
									</b>
								</div>
								<div class="col price_content">
									<b>
										<fmt:formatNumber 
										value="${deliveryFee}"
										/>원
									</b>
								</div>
								<div class="col price_content" style="border-right: none">
									<b style="color: tomato">
										<fmt:formatNumber 
											value="${sumAmount - discountPrice + deliveryFee}"
											/>원
									</b>
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
					
					<div class="button_line d-flex justify-content-center">
	               		<button class="btn btn-outline-secondary btn-lg mr-2">결제하기</button>
	               		<a href="<%=application.getContextPath()%>/cart/index"><button type="button" id="back_cart"
							class="btn btn-outline-secondary btn-lg"> 장바구니로 돌아가기</button></a> 
	               	</div>
				</form>	
			</div>
	
			<%@ include file="/WEB-INF/views/common/Footer.jsp"%>
		</div>
	</body>
</html>