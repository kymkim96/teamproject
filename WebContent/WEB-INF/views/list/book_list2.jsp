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
			
			<h3>자기계발서</h3>
			
		
			
			 <script>
			$('#allcheck').on('click',function(){
				//전체선택
				if($("ch1").prop("checked")){
					$("input[type=checkbox]").prop("checked",true);
				}else{
					$("input[type=checkbox]").prop("checked",false);
				}
			});
			</script>
			
			<div id="add">	
				<strong>외국소설</strong>에 <strong>총 6,136권</strong>의 상품이 등록되어 있습니다.
				<div id = "choose">
					<label><input type="checkbox" id="allcheck" class="chk" value="all">전체</label>
					
						<button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button>
						<button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">위시리스트</button> 
				</div>
			</div>

			<div>
			<br/>
			</div>
			
			<div id="item1">
			
				<a id="book_img" href="../../view/detail/10.html">
					<img src="<%=application.getContextPath()%>/resources/img/develop1.jpg"></a>
						

				<div id = book_data>
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/10.html">습관의 힘</a></strong></h4></li>
						<li>찰스 두히그 | 갤리온 | 2012.10.30</li>
						<li><h3><span class="price1">16,000원→ </span>
							<span class="price2">14,400원 (10%↓+5%P)</span></h3></li>
						<li>하버드 MBA 출신 뉴욕타임스 심층보도 전문 기자가 발로 뛰어 밝혀 낸 스마트한 습관<br/>
							 사용법당신에게 매일 초콜릿칩 쿠키를 사 먹는 습관이 있다고 상상해 보자. 그렇다면 얼마 안 가...</li>
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

				<a id="book_img" href="../../view/detail/11.html">
				<img src="<%=application.getContextPath()%>/resources/img/develop2.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/11.html">사람은 무엇으로 성장하는가. </a></strong></h4></li>
						<li>존 맥스웰 | 비즈니스북스 | 2012.10.05</li>
						<li><h3><span class="price1">14,500원→</span>
								<span class="price2"> 13,050원 (10%↓+5%P)</span><h3></li>
						<li>우리는 모두 인생이라는 경기를 뛰는 선수다.돈을 많이 벌고, 명예를 많이 쌓고, 공부를 많이<br/>
							 했다는 것이 인생에서의 승리를 의미하지는 않는다.중요한 것은 우리 스스로 인생을 열심히...</li>
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
							<label><input type="checkbox" id="ch2" name="chBox" value="2"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
						<li><button class="btn btn-primary" onclick="document.location='../../view/detail/11.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			</div>







			<div id="item1">

				<a id="book_img" href="../../view/detail/12.html">
				<img src="<%=application.getContextPath()%>/resources/img/develop3.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/12.html">적을 만들지 않는 대화법</a></strong></h4></li>
						<li>샘혼 | 갈매나무 | 2015.03.23</li>
							
						<li><h3><span class="price1">12,000원→</span>
								<span class="price2"> 10,800원 (10%↓+5%P)</span></h3></li>
						<li>이 책은 공격하지 않고 우아하게 이기는 커뮤니케이션 기술을 전수한다. 속이 상하면 화가 나고 눈물부터<br/>
							 나는가? 속사포처럼 쏟아붓는 상대의 말 한마디에 반박 한번 제대로 못하고 얼굴만 붉어지는가?</li>
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
							<label><input type="checkbox" id="ch3" name="chBox" value="3"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/12.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			
			</div>






			<div id="item1">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>/resources/img/develop4.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">하루 15분정리의 힘</a></strong></h4></li>
						<li>윤선현 | 위즈덤하우스 | 2012.03.23</li>
						<li><h3><span class="price1">13,800원 →</span> 
								<span class="price2">12,420원 (10%↓+5%P)</span></h3></li>
						<li>스마트워크 시대, 집중력을 잃은 이들에게 필요한 것은?“스마트기기는 쓰지만 스마트워크는 따라<br/>
							가지 못하는 직장인들” 직장인 K팀장은 출근길 스마트폰으로 기사 헤드라인을 훑어보다가 한..</li>
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
							<label><input type="checkbox" id="ch4" name="chBox" value="4"></label>
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
				<img src="<%=application.getContextPath()%>/resources/img/develop5.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">I am</a></strong></h4></li>
						<li>미카엘 크로게루스. 로만 채펠러 | 시공사 | 2010.06.28</li>
						
						<li><h3><span class="price1">12,000원 →</span> 
								<span class="price2">10,800원 (10%↓+5%P)</span></h3></li>
						<li>“왜 아무도 자신에게는 질문하지 않죠?”누군가 던진 이 사소한 한 문장이 모든 것의 시작이었다.<br/>
							 이 질문을 시작으로 우리는 한 가지 실험을 하게 됐다. 늘 하고는 싶었지만 여러 가...</li>
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
							<label><input type="checkbox" id="ch5" name="chBox" value="5"></label>
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
				<img src="<%=application.getContextPath()%>/resources/img/develop6.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">시크릿 두 번째 이야기.</a></strong></h4></li>
						<li>폴해링턴 | 살림 | 2010.02.01</li>
						<li><h3><span class="price1">12,000원 →</span>
								<span class="price2"> 10,800원 (10%↓+5%P)</span></h3></li>
						<li>아마존 베스트셀러 1위 뉴욕타임스 베스트셀러 1위 전국 서점 최장기간 베스트셀러 1위 출판<br/>
							역사상 최단기간 200만 부 돌파 신화! 전 세계 1억 독자의 삶은 완전히 바꾼 『시크릿』...	</li>
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
							<label><input type="checkbox" id="ch6" name="chBox" value="6"></label>
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
				<img src="<%=application.getContextPath()%>/resources/img/develop7.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">나는 4시간만 일한다.</a></strong></h4></li>
						<li>팀 페리스 | 다른상상 | 2017.10.20</li>
						<li><h3><span class="price1">14,800원 →</span> 
								<span class="price2">13,320원 (10%↓+5%P)</span></h3></li>
						<li>아마존, 뉴욕타임스, 월스트리트저널 베스트셀러 1위!5,000개에 달하는 아마존 독자 <br/>
							리뷰35개 언어로 번역, 130만부 판매된 장기 베스트셀러 《타이탄의 도구들》 저자 팀 페리스..</li>
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
							<label><input type="checkbox" id="ch8" name="chBox" value="8"></label>
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
				<img src="<%=application.getContextPath()%>/resources/img/develop8.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">나는 상처받지 않기로 했다.</a></strong></h4></li>
						<li>에이미 모린 | 비즈니스북스 | 2015.03.31</li>
						<li><h3><span class="price1">14,000원 →</span>
								<span class="price2"> 12,600원 (10%↓+5%P)</span></h3></li>
						<li>“왜 나는 결정적인 순간마다 무너질까?” 일과 사랑, 인간관계에서 오는 어떤 위기도<br/>
							 이겨내는 ‘강철 멘탈’의 비밀! ★ 전세계 21개국 출간! ★ 아마존 베스트셀러!“사람은 의지력...</li>
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
							<label><input type="checkbox" id="ch9" name="chBox" value="9"></label>
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

				<a id="book_img" href=""><img
					src="<%=application.getContextPath()%>/resources/img/develop9.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">아름답게 욕망하라.</a></strong></h4></li>
						<li>조주희 | 중앙북스 | 2011.07.07</li>
						<li><h3><span class="price1">13,000원 →</span>
								<span class="price2"> 11,700원 (10%↓+5%P)</span></h3></li>
						<li>국내 최초로 ‘욕망’의 개념을 ‘인생을 바꾸는 긍정의 힘’으로 재해석한 자기계발서!<br/>
							한국 대표 글로벌 특파원 조주희 ABC 뉴스 지국장의 첫 책!근 20년 동안의 외신 기자로서의 생...</li>
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
							<label><input type="checkbox" id="ch10" name="chBox" value="10"></label>
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
				<a id="book_img" href=""><img
					src="<%=application.getContextPath()%>/resources/img/develop10.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">미치도록 나를 바꾸고 싶을 때</a></strong></h4></li>
						<li>안상헌 | 북포스 | 2009.07.25</li>
						<li><h3><span class="price1">12,000원 →</span>
								<span class="price2"> 10,800원 (10%↓+5%P)</span></h3>
						<li>
						<li>미치도록 나를 바꾸고 싶을 때 필요한 것은 무엇일까? ‘자극이 필요해’라는 부제가 붙어<br/>
							 있는 《미치도록 나를 바꾸고 싶을 때》는 제목 그대로 미치도록 나를 바꾸고 싶을 때 필요한 ...</li>
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