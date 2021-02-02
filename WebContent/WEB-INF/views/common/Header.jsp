<%@ page contentType="text/html; charset=UTF-8"%>
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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/header.css">
		
	</head>
	<body>
		
			<header>
				<div id="headerul1">
					
					<button class="btn btn-sm">영업점안내</button>
					<button class="btn btn-sm">고객센터</button>
					
					<c:if test="${sessionUaid=='admin'}">
							
						<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/book-admin/create">등록</a></button>
							
					</c:if>
					
					<button class="btn btn-light"><a href="<%=application.getContextPath()%>/cart/index">나의쇼핑</a></button>
					<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/cart/index">쇼핑카트</a></button>
					<c:if test="${sessionUaid == null }">
					<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/auth/join1">회원가입</a></button>
					<button class="btn btn-light"><a href="<%=application.getContextPath()%>/auth/login1">로그인</a></button>
					</c:if>
					<br/>
					<c:if test="${sessionUaid != null }">
					
					<button class="btn btn-light"><a href="<%=application.getContextPath()%>/common/index1">로그아웃</a></button>
					<p id="짹짹">${sessionUaid}님 환영합니다.</p>
					</c:if>
					<br/>
				</div>
				
	
				<div id="divheader">
					<h1><a href="<%=application.getContextPath()%>/common/index"><img src="<%=application.getContextPath()%>/resources/img/omd.png" width="350px" height="100px"></a></h1>
	
	
					<div id="divheader2">
						<form name="searchForm" id="searchForm" method="post" action="<%=application.getContextPath()%>/search/searchresult">
							<input style="width:400px; height:39px; margin:0px; padding-left:5px; border:2px solid #998064;" id="btitle" name="btitle"  type="text" placeholder="찾고자 하는 도서를 입력해주세요."/>
							<button style="margin:-7px;  padding:0px; border:1px solid #998064;" class ="btn" type="submit"><img src="<%=application.getContextPath()%>/resources/img/검색.PNG"/></button>
							<a class="btn"  style="margin:2px;padding:0px; border:2px solid #998064;" href="<%=application.getContextPath()%>/cart/index"><img style="width:44px; height:40px" src="<%=application.getContextPath()%>/resources/img/장바구니.png"/></a>
						</form>
					</div>
	
	
				</div>
	
				<ul id="headerul2">
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list?categoriesCategoryName=현대소설">현대소설</a></button>
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list?categoriesCategoryName=자기계발서">자기개발서</a></button>
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list?categoriesCategoryName=해외소설">해외소설</a></button>
				</ul>
	
			</header>
		
	</body>
</html>