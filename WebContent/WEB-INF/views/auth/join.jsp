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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/auth.css">
		<script src="<%=application.getContextPath()%>/resources/js/join.js"></script>
	</head>
	
	<body>
		<div id="wrapper">
			<a href="index"><img id="omd" src="<%=application.getContextPath()%>/resources/img/omd.png"/></a>
			
		
				
			
			<div id="form2">
				<form id="formf" method="post" action="join">	
					<div id="input1">
						<input  type="text" placeholder="이름" id="uaname" name="uaname"/><br/>
						<input  type="text" placeholder="아이디" id="uaid" name="uaid"/><br/>
						<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/>
						<span  id="error1"></span>
					</div>	
						<div class="loginForm1" >
							<button onclick="ff()"><p>회원가입</p></button>
						</div>
						
					
				</form>
			
				
		
		
			</div>
			
			
		
		
			
			
		
		</div>
		
	</body>
	
</html>