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
		
	</head>
	
	<body>
		<div id="wrapper">
			<a href="index"><img id="omd" src="<%=application.getContextPath()%>/resources/img/omd.png"/></a>
			
			<form id="form1" name="loginForm" method="post" onsubmit="f1()">
				<div id="input1">
					<input  type="text" placeholder="아이디" id="uaid" name="uaid"/><br/>
					<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/><br>
					<span  id="error"></span>
				</div>
				<div class="loginForm1" >	
					<button ><p>로그인</p></button>		
				
				</div>
			</form>	
			<script>

			$(()=>{
				
				$("#qr1").click(()=>{
					$("#form1").hide();
					$("#form2").hide();
					$("#form3").hide();
					$(".loginForm1").hide();
					
					$("#qr2").show();
				});								
			});					
			function f1(){
								
				 event.preventDefault(); 
           		//
           		$("#error").html("");
           	
           		//입력값 받기
           		var validation = true;
           		
           		const uaid = $("#uaid").val();
           			if(uaid ===""){
           				$("#error").html("필수 입력 사항입니다.");
           				validation = false;
           			}
           			
           		const uapassword = $("#uapassword").val();
	          		if(uapassword ===""){
	      				$("#error").html("필수 입력 사항입니다.");
	      				validation = false;
       				}
           			
           		if(!validation){
           			return;
           		}
				$.ajax({
					url:"login",
					method:"post",
					data:{uaid:uaid,uapassword:uapassword},
					success: function(data) {
						if(data.result ==="success"){
							alert("로그인 성공");
							location.href="<%=application.getContextPath()%>";
						}else if(data.result ==="wrongUaid"){
						
							alert("아이디를 확인해주세요.");
							
						}else{
							alert("비밀번호를 확인해주세요.");
						}
						
						
					}
				
				});
				
			}
			
			</script>
			
			
			
			
			<div class="loginForm1" >	
					
					<a class="btn" id="join" href="join1" ><p>회원가입</p></a>
				
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