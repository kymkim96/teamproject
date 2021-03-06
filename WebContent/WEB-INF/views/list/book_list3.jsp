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
			<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_soyoung.css">
			<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	
	</head>
	
	
<body>
	<div id="layout">
		<%@include file="/WEB-INF/views/common/Header.jsp" %>

		<article>
			
			<h3>해외소설</h3>
			
		
			
			
			<div id="add">	
				<strong>외국소설</strong>에 <strong>총 6,136권</strong>의 상품이 등록되어 있습니다.
				<div id = "choose">
					<label><input type="checkbox" id="allcheckbox" name="chBox"  value="all">전체</label>			
							
						<button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button>
						<button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">위시리스트</button> 
					</div>
			</div>

`			<div>
			<br/>
			</div>


			<div id="item1">
			
				<a id="book_img" href="../../view/detail/13.html">
					<img src="<%=application.getContextPath()%>/resources/img/foreign1.jpg"></a>
						

				<div id = book_data>
					<ul id="data">
						<li><h4><strong><a href="#">심판</a></strong></h4></li>
						<li>베르나르 베르베르 | 열린책들 | 2020.08.30</li>
						<li><h3><span class="price1">12,800원→ </span>
							<span class="price2">11,520원 (10%↓+5%P)</span></h3></li>
						<li>지난 생을 돌아보고 다음 생을 결정짓는 심판이 시작된다!베르나르 베르베르 신작 희곡 <br/>
							죽고 난 다음에 시작되는 특별한 심판 한국 독자들이 사랑하는 베스트셀러 작가 베르나르 베르베르의...</li>
						
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>	
					</ul>
				</div>
					
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" id="ch1" name="chBox" value="1"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button></li>
						</ul>
					
					</div>
				
			</div>









			<div id="item1">

				<a id="book_img" href="../../view/detail/14.html">
				<img src="<%=application.getContextPath()%>/resources/img/foreign2.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/14.html">연금술사</a></strong></h4></li>
						<li>파울로 코엘료 | 문학동네 | 2001.12.01</li>
						<li><h3><span class="price1">9,500원→</span>
								<span class="price2"> 8,550원 (10%↓+5%P)</span><h3></li>
						<li>`자아의 신화`를 찾아가는 영혼의 연금술. 평범한 양치기 청년 산티아고는 마음의 속삭임에<br/>
							 귀를 열고 자신의 보물을 찾으러 길을 떠난다. 집시 여인, 늙은 왕, 도둑, 화학자, 낙타...
						</li>
						<li>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
						</li>	
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			</div>







			<div id="item1">

				<a id="book_img" href="../../view/detail/15.html">
				<img src="<%=application.getContextPath()%>/resources/img/foreign3.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/15.html">기억 1</a></strong></h4></li>
						<li>베르나르 베르베르 | 열린책들 | 2020.05.30</li>
							
						<li><h3><span class="price1">14,800원→</span>
								<span class="price2">  13,320 원 (10%↓+5%P)</span></h3></li>
						<li>기억의 문이 열리고 모험이 시작된다! 한국 독자들이 사랑하는 베스트셀러 작가 베르나르 베르베르의 <br/>
							신작 장편소설『기억』(전2권)이 프랑스 문학 전문 번역가 전미연의 번역으로 열린책...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>		
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			
			</div>






			<div id="item1">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign4.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">인생은 소설이다.</a></strong></h4></li>
						<li>기욤 뮈소 | 밝은세상 | 2020.11.24</li>
						<li><h3><span class="price1">15,000원 →</span> 
								<span class="price2">13,500원 (10%↓+5%P)</span></h3></li>
						<li>플로라 콘웨이는 현재 세 권의 소설을 발표한 작가지만 데뷔작을 필두로 나머지 두 작품 역시<br/>
							 공전의 히트를 기록하는 한편 최고 권위의 프란츠 카프카 상을 수상해 국제적인 명성을 획득...</li>
						 <li>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
						</li>	
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			</div>






			<div id="item1">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign5.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">창문 넘어 도망친 100세 노인 </a></strong></h4></li>
						<li>요나스 요나손 | 열린책들 | 2013.07.25</li>
						<li><h3><span class="price1">13,800원 →</span> 
								<span class="price2">12,420원 (10%↓+5%P)</span></h3></li>
						<li>전 세계 500만 부 이상 판매된 특급 베스트셀러100년간 전 세계를 누비며 역사의 현장 한복판에<br/>
							 본의 아니게(?) 끼어든 요절복통 영감님, 101년째 모험을 떠나다! 2010년 ...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>		 
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
				
			</div>







			<div id="item1">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign6.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">꾸뻬 씨의 행복 여행 </a></strong></h4></li>
						<li>프랑수아 를로르, 발레리 해밀 | 오래된미래 | 2004.07.28</li>
						<li><h3><span class="price1">13,500원 →</span>
								<span class="price2"> 12,150원 (10%↓+5%P)</span></h3></li>
						<li>전 유럽인의 마음을 사로잡은 한 정신과 의사의 특별한 행복론 2002년 프랑스 파리의 서점가에서는<br/>
							 독특한 책 한 권이 화제를 불러일으키고 있었다. 마음의 병을 앓고 있는 사람들을 ...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>		 
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			
			</div>







			<div id="item1">

				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign7.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">작가들의 비밀스러운 삶</a></strong></h4></li>
						<li>기욤 뮈소 | 밝은세상 | 2019.11.12</li>
						<li><h3><span class="price1">14,800원 →</span> 
								<span class="price2">13,320원 (10%↓+5%P)</span></h3></li>
						<li>1. 미궁에 빠진 살인사건과 섬에 칩거하는 작가의 비밀은? -펼치자마자 게걸스럽게 빨아들일<br/>
							 수밖에 없는 역대급 스토리! -기욤 뮈소 2019년 신작! 프랑스 베스트셀러 1위!《작가..</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>		 
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
			
			</div>






			<div id="item1">

				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign8.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">오베라는 남자</a></strong></h4></li>
						<li>프레드릭 배크만 | 다산책방 | 2015.05.14</li>
						<li><h3><span class="price1">13,800원 →</span>
								<span class="price2"> 12,420원 (10%↓+5%P)</span></h3></li>
						<li>“건드리면 폭발하는 오베가 왔다!”미국 아마존, 뉴욕타임스 소설 분야 1위!53주 연속 뉴욕타임스<br/>
							 베스트셀러전 세계 40개국 판권 계약! 지금 가장 핫한 밀리언셀러의 한국 상륙!따...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
							<span  class="fa fa-star"></span>
						</li>		 
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
			
			
			</div>






			<div id="item1">

				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign9.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">당신, 거기 있어 줄래요?</a></strong></h4></li>
						<li>기욤 뮈소 | 밝은세상 | 2007.04.20</li>
						<li><h3><span class="price1">9,800원 →</span>
								<span class="price2"> 8,820원 (10%↓+5%P)</span></h3></li>
						<li>『구해줘』작가 기욤 뮈소의 최신 장편소설 출간! 이 소설은 ‘만약 우리에게 시간을 되돌릴 수 있는 <br/>
							기회가 주어진다면, 인생을 어떻게 바꿀 것인가?’라는 질문으로부터 시작된다. 지나...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star"></span>
						</li>		
					</ul>
				</div>
					
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
			
			</div>






			<div id="item1">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/foreign10.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">낭만적인 연애와 그 후의 일상</a></strong></h4></li>
						<li>알랭 드 보통 | 은행나무 | 2016.08.25</li>
						<li><h3><span class="price1">13,500원 →</span>
								<span class="price2"> 12,150원 (10%↓+5%P)</span></h3>
						<li>
						<li>“언제 다시 소설을 쓸 거냐고 물으면 전 항상‘사랑에 대해 쓸 것이 충분히 생기면’이라고 대답했습니다.<br/>
							”알랭 드 보통 21년만의 장편소설, 다시 사랑을 말하다 ‘일상의 철학자’ 알...</li>
						<li>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
							<span  class="fa fa-star checked"></span>
						</li>		
					</ul>
				</div>
			
						
					<div id ="shopping">
						<ul id="bb">
							<li>
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/7.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
			</div>
		</article>
	
	
		<%@include file="/WEB-INF/views/common/Footer.jsp" %>
		
		</div>
		
	</body>
</html>