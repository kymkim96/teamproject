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
			
		
				
			
			<div id="form2">
				<form id="formf" name="joinForm" method="post" onsubmit="ff()">	
					<div id="input1">
						<input  type="text" placeholder="이름" id="uaname" name="uaname"/><br/>
						<input  type="text" placeholder="아이디" id="uaid" name="uaid"/><br/>
						<input  type="password" placeholder="패스워드" id="uapassword" name="uapassword"/>
						<span  id="error1"></span>
					</div>	
						<div class="loginForm1" >
							<button><p>회원가입</p></button>
						</div>
						
					
				</form>
				<script>
				
				function ff(){
									
					/* event.preventDefault();
					const f2 = document.querySelector("#uaid");
					const f3 = document.querySelector("#uapassword");
					const f4 = document.querySelector("#uaname");
					if(f2.value===""||f3.value===""||f4.value===""){
						const f5 = document.querySelector("#error1");
						f5.innerHTML="이름, 아이디, 비밀번호는 필수 입력입니다.";
						f5.style.color="red";
						return;
					} */
					// const loginf = document.querySelector("#formf");
					// loginf.submit();
					 event.preventDefault(); 
               	
               		$("#error1").html("");
               	
               		//입력값 받기
               		var validation = true;
               		
               		const uaid = $("#uaid").val();
               			if(uaid ===""){
               				$("#error1").html("필수 입력 사항입니다.");
               				validation = false;
               			}
               			
               		const uapassword = $("#uapassword").val();
               		if(uapassword ===""){
           				$("#error1").html("필수 입력 사항입니다.");
           				validation = false;
           			}
               		
               		const uaname = $("#uaname").val();
               		if(uaname ===""){
           				$("#error1").html("필수 입력 사항입니다.");
           				validation = false;
           			}
               		
               		if(!validation){
               			return;
               		}
					
					$.ajax({
						url:"join",
						method:"post",
						data:{uaid:uaid,uaname:uaname,uapassword:uapassword},
						success:function(data) {
							if(data.result==="중복"){
							alert("이미 가입된 아이디입니다.");
							location.href = "join1";
							}else{
								alert("가입된 아이디로 로그인 해주세요.");
								location.href = "login1";
							}
						}
					});
				};
				</script>
				
		
		
			</div>
			
			
		
		
			
			
		
		</div>
		
	</body>
	
</html>