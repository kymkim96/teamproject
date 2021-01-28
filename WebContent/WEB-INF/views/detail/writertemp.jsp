<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_seoyeon.css">
		<script src="<%=application.getContextPath()%>/resources/js/detailLink.js"></script>
		
  			
  		
  		
	</head>
	
	
	<body>
		<div id="layout">
		
			
			<%@ include file="/WEB-INF/views/common/Header.jsp" %>
					
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<div class="memberReview">
				<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
				color: #917354;">
					<h4> 작가 등록하기 </h4><hr/>
				</div>
				
				
				
				<div class="writerform">
					<form enctype="multipart/form-data" name="reviewform" 
							action="<%=application.getContextPath()%>/writer/insertwriter" method="post">
		                  	
		                    <div class="form-group">
		                      <label for="wname">작가 이름</label>
		                      <input type="text" class="form-control" id="wname" name="wname"/>
		                      <small class="form-text text-muted">필수 입력 사항입니다.</small>
		                    </div>
		                    
		                    <div class="form-group">
		                      <label for="wcontent"> 작가 설명 </label>
		                      <textarea id="wcontent" name="wcontent" class="form-control" rows="5" cols="50"></textarea>
		                    </div>
		                  
		                	<button class="btn btn-primary"> 저장</button>
		                	<!-- <a  class="btn btn-primary" href="boardlist2"> 취소</a> -->
		            </form>
				</div>
				
				
			
			
			</div>
			
			<!-- --------------------------------------------------------------------------------------------------------------- -->
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
			
										
		</div>
	</body>
</html>