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
			
		
				
			
				<form id="formf" name="authupdate" method="post" onsubmit="f1()">	
					<input type="hidden" name="uaid" value="${auth}"/>
					<div id="input1">
						
						<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/>
						<span  id="error"></span>
					</div>	
						<div class="loginForm1" >
							<button><p>비밀번호 변경</p></button>
						</div>
						
					
				</form>
				<script>
			function f1(){
								
				 event.preventDefault(); 
           		//
           		$("#error").html("");
           	
           		//입력값 받기
           		var validation = true;
           		
           	
           		const uapassword = $("#uapassword").val();
	          		if(uapassword ===""){
	      				$("#error").html("필수 입력 사항입니다.");
	      				validation = false;
       				}
           			
           		if(!validation){
           			return;
           		}
				$.ajax({
					url:"authupdate",
					method:"post",
					data:{uaid:"${auth}", uapassword:uapassword},
					success: function(data) {
						if(data.result ==="중복"){
							alert("기존 비밀번호와 다른 비밀번호를 입력해 주세요.");
							
						}else {
							
							alert("새로운 비밀번호로 로그인 해주세요.");
							location.href="<%=application.getContextPath()%>/auth/login1";
						}
						
						
					}
				
				});
				
			}
			
			</script>
					<div class="loginForm1" >
						<c:if test="${sessionUaid!=null}">
							<a onclick="f2()" href="<%=application.getContextPath()%>/auth/authdelete?uaid=${sessionUaid}">회원탈퇴</a>
						</c:if>
					</div>
					<script>
					const f2= ()=>{
						alert("회원탈퇴가 정상적으로 처리되었습니다.")
						
					};
					
					</script>
		
		
			</div>
			
			
		
		
			
			
		
		
		
	</body>
	
</html>