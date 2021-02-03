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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_seoyeon.css">
		
	</head>
	
	<body>
		<div id="wrapper">
			<div><br/><br/><br/></div>
			<a href="<%=application.getContextPath()%>/auth/index" ><img height="150px" src="<%=application.getContextPath()%>/resources/img/omd.png"/></a>
			
			<form id="searchorder" name="searchorder" method="get" action="<%=application.getContextPath()%>/order/ordered" onsubmit="f1()">
				<div id="input1">
					<div><br/></div>
					<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; color: #917354;">
						<h4> 비회원 주문번호를 입력하세요 </h4><hr/>
					</div>
					
					<div  class="d-flex flex-row justify-content-start" style="font-family: 'NanumSquareRound';">	
						<input  style="width:450px;" type="text" placeholder="비회원 주문번호" id="oid" name="oid"/>
						<button  id="review_edit" class="btn btn-sm" style="background-color:#917354; color: white; width:70px;"> 검색 </button>	
						<span  id="error"></span>
					</div>
					<c:if test="${orderConfirm=='notOrder'}">
						<script type="text/javascript">
							alert("주문번호를 확인해 주세요");
						</script>
					</c:if>
				
				</div>	
			</form>
			<script type="text/javascript">
			function f1(){
				
				event.preventDefault(); 
          		$("#error").html("");
          		const searchorder = document.searchorder;
          	
          		//입력값 받기
          		var validation = true;
          		
          		const oid = $("#oid").val();
          			if(oid ===""){
          				$("#error").html("필수 입력 사항입니다.");
          				validation = false;
          			}
   
          			
          		if(!validation){
          			return;
          		}
				
          		searchorder.submit();
			}
			
			</script>				
		</div>
		
	</body>
	
</html>