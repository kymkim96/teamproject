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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/auth.css">
		
	</head>
	
	<body>
		<div id="wrapper">
			<a href="index"><img id="omd" src="<%=application.getContextPath()%>/resources/img/omd.png"/></a>
			
		
				
			
			<div id="form2">
				<form id="formf" name="authupdate" method="post" action="<%=application.getContextPath()%>/auth/authupdate">	
					<input type="hidden" name="uaid" value="${auth}"/>
					<div id="input1">
						
						<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/>
						<span  id="error1"></span>
					</div>	
						<div class="loginForm1" >
							<button><p>비밀번호 변경</p></button>
						</div>
						
					
				</form>
					<div class="loginForm1" >
						<c:if test="${sessionUaid!=null}">
							<a href="<%=application.getContextPath()%>/auth/authdelete?uaid=${sessionUaid}">회원탈퇴</a>
						</c:if>
					</div>
				
		
		
			</div>
			
			
		
		
			
			
		
		</div>
		
	</body>
	
</html>