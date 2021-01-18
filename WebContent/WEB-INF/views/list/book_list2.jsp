<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>Insert title here</title>
 				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
				
				<link rel="stylesheet" href="../../resources/css/book_list.css">
		<link rel="stylesheet" href="../../resources/css/header.css">
		<link rel="stylesheet" href="../../resources/css/footer.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	
	
<body>
		<div id="div1">

		<header>
			<div id="headerul1">
				
				<button class="btn btn-sm">영업점안내</button>
				<button class="btn btn-sm">고객센터</button>
				<button class="btn btn-Light"><a href="../../view/admin/Update.html">수정</a></button>
				<button class="btn btn-Light"><a href="../../view/admin/Create.html">등록</a></button>
				<button class="btn btn-light"><a href="../../view/cart/Cart.html">나의쇼핑</a></button>
				<button class="btn btn-light"><a href="../../view/cart/Cart.html">쇼핑카트</a></button>
				<button class="btn btn-Light"><a href="../../view/auth/auth.html">회원가입</a></button>
				<button class="btn btn-Light"><a href="../../view/auth/auth.html">로그인</a></button>
			
				<br/>
			</div>
			

			<div id="divheader">
				<h1><a href="../../index.html"><img src="../../resources/img/omd.png" width="350px" height="100px"></a></h1>

				<div id="divheader2">
					<input id="석봉갓" width="500px" type="text" placeholder="찾고자 하는 도서를 입력해주세요.">
					<img  src="../../resources/img/검색.PNG">
				</div>


			</div>

			<ul id="headerul2">
				<button class="btn btn-sm"><a href="../../view/list/book_list1.html">현대소설</a></button>
				<button class="btn btn-sm"><a href="book_list2.html">자기개발서</a></button>
				<button class="btn btn-sm"><a href="../../view/list/book_list3.html">해외소설</a></button>
				

			</ul>

	</header>
		
<!------------------------------------------------------------------------------------------------------------------------------------------- -->		
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->


		
		<section>

			<article>
			
			<h3>자기개발서</h3>
			
			<div id="munu">
				<a href="#"><h5>현대소설</h5></a> 
				<a href="#"><h5>베스트셀러</h5></a>
				<a href="#"><h5>새로나온 책</h5></a> 
				<a href="#"><h5>반디추천</h5></a>
			</div>
			
			
			
			<div id="add">	
				<strong>자기계발서</strong>에 <strong>총 12,287권</strong>의 상품이 등록되어 있습니다.
				<div id = "choose">
					<label><input type="checkbox" class="chk" value="all">전체</label>
					<button class="chk">쇼핑카트담기</button>
					<button class="chk">위시리스트</button> 
				</div>
			</div>




			<div id="item">
			
				<a id="book_img" href="../../view/detail/10.html">
					<img src="../../resources/img/develop1.jpg"></a>
						

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
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/10.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					
					</div>
				
			</div>









			<div id="item">

				<a id="book_img" href="../../view/detail/11.html">
				<img src="../../resources/img/develop2.jpg"></a>

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
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
						<li><button class="btn btn-primary" onclick="document.location='../../view/detail/11.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			</div>







			<div id="item">

				<a id="book_img" href="../../view/detail/12.html">
				<img src="../../resources/img/develop3.jpg"></a>

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
							<label><input type="checkbox" class="cj"></label>
							<label for = "quantity">
							<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
							</label>
							</li>	
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/12.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			
			</div>






			<div id="item">
				<a id="book_img" href="">
				<img src="../../resources/img/develop4.jpg"></a>

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






			<div id="item">
				<a id="book_img" href="">
				<img src="../../resources/img/develop5.jpg"></a>

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







			<div id="item">
				<a id="book_img" href="">
				<img src="../../resources/img/develop6.jpg"></a>

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







			<div id="item">

				<a id="book_img" href="">
				<img src="../../resources/img/develop7.jpg"></a>

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






			<div id="item">

				<a id="book_img" href="">
				<img src="../../resources/img/develop8.jpg"></a>

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






			<div id="item">

				<a id="book_img" href=""><img
					src="../../resources/img/develop9.jpg"></a>

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






			<div id="item">
				<a id="book_img" href=""><img
					src="../../resources/img/develop10.jpg"></a>

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
	
	</section>	
		
		
			<footer>

			<ul class="headerul2">
				
				<button class="btn btn-sm">회사소개</button>
				<button class="btn btn-sm">이용약관</button>
				<button class="btn btn-sm">개인정보 처리방침</button>
				<button class="btn btn-sm">출판사를 위한안내</button>
				<button type="button" class="btn btn-sm ">광고안내</button>
				<button type="button" class="btn btn-sm ">SCM</button>

			</ul>
			<div id="divf1">
				
				<h1><a href="../../index.html"><img id="divf1a"src="../../resources/img/omd.png" width="350px" height="100px"></a></h1>


				<div id="divf2">
					<p id= "divf2p1">고객문의 : 1577-4030(발신자 부담) 평일 9시~18시(토요일,일요일,공휴일 휴무)</p>
					<div id="divf3">
						<div id="divf4">
						<p>회사명 : (주)용권문고</p>
						<p>대표이사 : 허민</p>
						<p>개인정보 관리 책임자 : 양미연 김태연</p>
						<p>E-mail : drakwon_cs@bnl.co.kr</p>
						</div>
						<div id="divf5">
						<p>소재지 : 서울 송파구 중대로 135, 서관 12층 원 밀리언 드림스</p>
						<p>사업자 등록번호 : 120-81-02543</p>
						<p>통신판매업 신고번호 : 제2016-서울서초-1668호</p>
						<p>물류센터 : (우 10881)경기도 파주시 문발로 77</p>
						</div>
						
						
					</div>
					<div><p id="divf2p2">copyright ⓒ 권소영 김서연 김시경 김영훈 All Rights Reserved </p></div>
				</div>


				</div>
			
			
			</div>
			
			
		</footer>
		
		
		
		</div>
		
		
		
	</body>
</html>