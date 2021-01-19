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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/header.css">
		
	</head>
	<body>
		
			<header>
				<div id="headerul1">
					
					<button class="btn btn-sm">영업점안내</button>
					<button class="btn btn-sm">고객센터</button>
					<button class="btn btn-Light"><a href="<%=application.getContextPath()%>/book-admin/update">수정</a></button>
					<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/book-admin/create">등록</a></button>
					<button class="btn btn-light"><a href="<%=application.getContextPath()%>/cart/index">나의쇼핑</a></button>
					<button class="btn btn-light"><a href=" <%=application.getContextPath()%>/cart/index">쇼핑카트</a></button>
					<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/auth/auth">회원가입</a></button>
					<button class="btn btn-Light"><a href=" <%=application.getContextPath()%>/auth/auth">로그인</a></button>
				
					<br/>
				</div>
				
	
				<div id="divheader">
					<h1><a href="../../index.html"><img src="<%=application.getContextPath()%>/resources/img/omd.png" width="350px" height="100px"></a></h1>
	
	
					<div id="divheader2">
						<input id="석봉갓" width="500px" type="text" placeholder="찾고자 하는 도서를 입력해주세요.">
						<img  src="<%=application.getContextPath()%>/resources/img/검색.PNG">
					</div>
	
	
				</div>
	
				<ul id="headerul2">
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list1">현대소설</a></button>
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list2">자기개발서</a></button>
					<button class="btn btn-sm"><a href="<%=application.getContextPath()%>/list/book_list3">해외소설</a></button>
					
	
				</ul>
	
			</header>
		
	</body>
</html>