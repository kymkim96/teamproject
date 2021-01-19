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
		<script src="<%=application.getContextPath()%>/resources/js/auth.js"></script>
	</head>
	
	<body>
		<div id="wrapper">
			<a href="index"><img id="omd" src="<%=application.getContextPath()%>/resources/img/omd.png"/></a>
			
			<form id="form1"method="post" action="login2">
				<div id="input1">
					<input  type="text" placeholder="아이디" id="uid" name="uid"/><br/>
					<input  type="password" placeholder="패스워드" id="upassword" name="upassword"/>
				</div>
				<div class="loginForm" >	
					<button id="login" ><p>로그인</p></button>
					
				
				</div>
			</form>
			<div class="loginForm" >	
					
					<button id="join" ><p>회원가입</p></button>
				
				</div>
			
			<div>	
				
			</div>	
			
			<div id="form2" style="display:none;">
			<form>	
				<div id="input1">
					<input  type="text" placeholder="이름" id="uaname" name="uaname"/><br/>
					<input  type="text" placeholder="아이디" id="uaid" name="uaid"/><br/>
					<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/>
				</div>	
				
			</form>
			
			<div>
					
					<form id="loginForm1">	
					
						<div id="join1" ><p>회원가입</p></div>
				
					</form>
				</div>	
			</div>
			
			
			<div>	
				<form id="form3">	
					<div id="qr1"><p>QR코드 로그인</p></div>
					<div><p>일회용 번호 로그인</p></div>
				
				</form>
			</div>	
			<div id="qr2" style="display:none">
				<div id="qr3">
					<h4>QR로그인</h4>
					<img src="<%=application.getContextPath()%>/resources/img/qr.PNG">
				</div>
				<div id="qr4"><a href="login1"><p>취소</p></a></div>
			
			</div>
			
			
		
		</div>
		
	</body>
	
</html>