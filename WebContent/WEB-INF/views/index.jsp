<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/index.css">
</head>
<body>
	<div id="layout">
		<jsp:include page="/WEB-INF/views/common/Header.jsp"/> 
		
		<jsp:include page="/WEB-INF/views/common/Section.jsp"/> 
		
		<jsp:include page="/WEB-INF/views/common/Footer.jsp"/>
	</div>
</body>
</html>