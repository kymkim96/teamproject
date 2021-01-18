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
			
		

				
		<link rel="stylesheet" href="<%=application.getContextPath() %> /resources/css/list/book_list.css"> 
			<%-- <link rel="stylesheet" href=" <%=application.getContextPath()%>/resources/css/header.css">
		<link rel="stylesheet" href=" <%=application.getContextPath()%>/resources/css/footer.css"> --%>
			
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	</head>
	
	
	<body>
	
		<%-- 	<div id="div1">

		<header>
			<div id="headerul1">
				
				<button class="btn btn-sm">영업점안내</button>
				<button class="btn btn-sm">고객센터</button>
				<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/views/admin/Update.html">수정</a></button>
				<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/views/admin/Create.html">등록</a></button>
				<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/views/cart/Cart.html">나의쇼핑</a></button>
				<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/views/cart/Cart.html">쇼핑카트</a></button>
				<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/views/auth/auth.html">회원가입</a></button>
				<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/views/auth/auth.html">로그인</a></button>
			
				<br/>
			</div>
			

			<div id="divheader">
				<h1><a href="../../index.html"><img src=" <%=application.getContextPath()%>resources/img/omd.png" width="350px" height="100px"></a></h1>


				<div id="divheader2">
					<input id="석봉갓" width="500px" type="text" placeholder="찾고자 하는 도서를 입력해주세요.">
					<img  src=" <%=application.getContextPath()%>resources/img/검색.PNG">
				</div>


			</div>

			<ul id="headerul2">
				<button class="btn btn-sm"><a href="book_list1.jsp">현대소설</a></button>
				<button class="btn btn-sm"><a href="book_list2.jsp">자기개발서</a></button>
				<button class="btn btn-sm"><a href="book_list3.jsp">해외소설</a></button>
				

			</ul>
		</header>
		 --%>
		
<!------------------------------------------------------------------------------------------------------------------------------------------- -->		
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->
<!------------------------------------------------------------------------------------------------------------------------------------------- -->


		
		<section>

			<article>
			
			<h3>현대소설</h3>
			
			<div id="munu">
				<a href="#"><h5>현대소설</h5></a> 
				<a href="#"><h5>베스트셀러</h5></a>
				<a href="#"><h5>새로나온 책</h5></a> 
				<a href="#"><h5>반디추천</h5></a>
			</div>
			
			
			
			<div id="add">	
				<strong>현대소설</strong>에 <strong>총 11,881권</strong>의 상품이 등록되어 있습니다.
				<div id = "choose">
					<label><input type="checkbox" class="chk" value="all">전체</label>
						<button class="chk">쇼핑카트담기</button>
						<button class="chk">위시리스트</button> 
				</div>
			</div>




			<div id="item">
			
				<a id="book_img" href="../../view/detail/7.html">
					<img src="<%=application.getContextPath()%>/resources/img/develop1.jpg"></a>
						

				<div id ="book_data" >
					<ul id="data">
						<li><h4><strong ><a href="../../view/detail/7.html">은교</a></strong></h4></li>
						<li>박신범 | 문학동네 | 2010.04.06</li>
						<li><h3><span class="price1">12,000원→ </span>
						<span class="price2">10,800원 (10%↓+5%P)</span></h3></li>
						
						<li>2010년 박범신의 신작 장편소설 『은교』 “이 소설로 나는 내 안의 욕망이라는 게 여전히<br />
							눈물겹게 불타고 있음을 알았다!” (박범신) “연애소설이 예술가소설로 육박한 사례라고 하...
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
					
					<div id ="shopping" >
						<ul id="bb">
							<li>
							<label><input type="checkbox" ></label>
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

				<a id="book_img" href="../../view/detail/8.html">
				<img src="<%=application.getContextPath()%>/resources/img/modern2.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/8.html">82년생 김지영</a></strong></h4></li>
						<li>조남주 | 민음사 | 2016.10.14</li>
						<li><h3><span class="price1">13,000원→</span>
								<span class="price2"> 11,700원 (10%↓+5%P)</span><h3></li>
						<li>“사람들이 나보고 맘충이래.”한국에서 여자로 살아가는 일그 공포, 피로, 당황, 놀람, 혼란,<br />좌절의
							연속에 대한 인생 현장 보고서 조남주 장편소설 『82년생 김지영』이 민음사 ‘오...
						</li>
						<li>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
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
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/8.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			</div>







			<div id="item">

				<a id="book_img" href="../../view/detail/9.html">
				 <img src="../../resources/img/modern3.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="../../view/detail/9.html">달러구트 꿈 백화점</a></strong></h4></li>
						<li>이미예 | 팩토리나인 | 2020.07.08</li>
							
						<li><h3><span class="price1">13,800원→</span>
								<span class="price2">  12,420원 (10%↓+5%P)</span></h3></li>
						<li>여기는 잠들어야만 입장할 수 있는 ‘달러구트 꿈 백화점’입니다. 잠들어야만 입장할 수<br /> 있는
							독특한 마을. 그곳에 들어온 잠든 손님들에게 가장 인기 있는 곳은, 온갖 꿈을 한데 모아...
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
							<li><button class="btn btn-primary" onclick="document.location='../../view/detail/9.html'">바로구매</button></li>
							<li><button class="btn btn-primary" onclick="document.location='../../view/cart/Cart.html'">쇼핑카트담기</button></li>
						</ul>
					</div>
				
			
			</div>






			<div id="item">
				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>resources/img/modern4.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">7년의 밤</a></strong></h4></li>
						<li>정유정 | 은행나무 | 2011.03.30</li>
						<li><h3><span class="price1">14,500원 →</span> 
								<span class="price2">13,050원 (10%↓+5%P)</span></h3></li>
						<li>
							새로운 상상력, 역동적 서사, 강렬한 메시지! 한국문단의 ‘아마존’, 세계문학상 수상작가 정유정<br /> 2년 만의
							장편소설“그녀는 괴물 같은 ‘소설 아마존’이다” - 박범신(소설가)뒤돌아...
						</li>
						<li>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
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
				<img src="<%=application.getContextPath()%>resources/img/modern5.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">고래</a></strong></h4></li>
						<li>천명관 | 문학동네 | 2004.12.24
						<li>
						<li><h3><span class="price1">13,800원 →</span> 
								<span class="price2">12,420원 (10%↓+5%P)</span></h3></li>
						<li>소설에 대해 우리가 가져온 기존의 상식을 보기 좋게 훌쩍 비켜서는, 놀랄 만한 다채로움과<br />
							독특한 개성을 지니고 있다. 독자에게 처음엔 낯설음과 기이함, 동시에 상당한 당혹스러움과 ...
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







			<div id="item">
				<a id="book_img" href="">
				<img src="../../resources/img/modern6.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">시선으로부터</a></strong></h4></li>
						<li>정세랑 | 문학동네 | 2020.06.05</li>
						<li><h3><span class="price1">14,000원 →</span>
								<span class="price2"> 12,600원 (10%↓+5%P)</span></h3></li>
						<li>이 소설은 무엇보다 20세기를 살아낸 여자들에게 바치는 21세기의 사랑이다.”한국문학이 당도한 <br />올곧은
							따스함, 정세랑 신작 장편소설독창적인 목소리와 세계관으로 구축한 SF소설부터 ...
						</li>
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

				<a id="book_img" href="">
				<img src="<%=application.getContextPath()%>resources/img/modern7.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">태연한 인생</a></strong></h4></li>
						<li>은희경 | 창비 | 2012.06.04</li>
						<li><h3><span class="price1">13,000원 →</span> 
								<span class="price2">11,700원 (10%↓+5%P)</span></h3></li>
						<li>길을 잃은 자에게 사랑이 찾아오고매혹이 끝난 뒤에, 인생은 시작된다태연한 인생은희경 장편소설*<br />
							작가 은희경이 돌아왔다. 매혹과 사랑, 열정과 고독을 묘파하는 장편소설, 『태연한 인...
						</li>
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
				<img src="<%=application.getContextPath()%>resources/img/modern8.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">일의 기쁨과 슬픔</a></strong></h4></li>
						<li>장류진 | 창비 | 2019.10.25</li>
						<li><h3><span class="price1">14,000원 →</span>
								<span class="price2"> 12,600원 (10%↓+5%P)</span></h3></li>
						<li>2018년 창비신인소설상으로 등단한 이후 단숨에 수많은 독자와 문단의 관심을 한몸에 받으며<br />
							센세이션을 일으킨 장류진 작가의 첫번째 소설집. 장류진의 등단작 '일의 기쁨과 슬픔'은 ...
						</li>
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
				<img src="<%=application.getContextPath()%>resources/img/modern9.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">살인자의 기억법</a></strong></h4></li>
						<li>김영하 | 문학동네 | 2013.07.23</li>
						<li><h3><span class="price1">10,000원 →</span>
								<span class="price2"> 9,000원 (10%↓+5%P)</span></h3></li>
						<li>“무서운 건 악이 아니오. 시간이지. 아무도 그걸 이길 수가 없거든.” 남성적인 문체의 속도에<br />
							대한 완벽한 배반, 시야가 좁아질 정도의 질주를 스키드 마크도 없이 일시에 끝내버린 ...
						</li>
						<li>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
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
				<img src="<%=application.getContextPath()%>resources/img/modern10.jpg"></a>

				<div id="book_data">
					<ul id="data">
						<li><h4><strong><a href="#">사서함 110호 우편물</a></strong></h4></li>
						<li>이도우 | 시공사 | 2016.03.18</li>
						<li><h3><span class="price1">13,000원 →</span>
								<span class="price2"> 11,700원 (10%↓+5%P)</span></h3>
						<li>
						<li>“네 사랑이 무사하기를, 내 사랑도 무사하니까”20만 독자들에게 친구가 되어준, 늘 곁에 두고 싶은
							이야기■<br /> 작품 소개‘다시 한 번 사랑해보기로 한’ 모든 이를 향한 따뜻한 시선 ...
						</li>
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
</html>img/modern1.jpg"></a>