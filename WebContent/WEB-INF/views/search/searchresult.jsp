<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_sigyung.css">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/search.css">
</head>
<body>
	<div id="layout">
		<jsp:include page="/WEB-INF/views/common/Header.jsp"/> 
		<div class="content">
			<div class="general_info">
				<c:if test="${btitle != null}">
				<span class="shopping_cart_title">검색결과</span> <span>${btitle}(으)로 검색한 결과입니다.</span> <div style="display:inline-block; width:80px"></div>
				</c:if>
			</div>
			
               
               
                  
                  <div>
                     		
                             <c:forEach var="book" items ="${list}">
                           		
		                            <div id="item1">
		                             
		                               	<div><a href="<%=application.getContextPath()%>/detail?param1=${book.isbn}"><img src="${book.bimgLink}" style="height:330px"/></a></div>
		                               	<div style="display:inline-block; width:850px">
			                                <ul>
		                                		<li style="margin:10px;"> <h4 style="color:#B8A791;"><strong>${book.btitle}</strong></h4> </li>
			                                 	<li> <c:forEach var="writer" items ="${book.bookWriterlist}">${writer.wname} </c:forEach>  | ${book.bpublisher } | <fmt:formatDate value="${book.bpublishDate}" pattern="yyyy.MM.dd"/></li>                                	
			                                 	<li> <h3><span class="price1">${book.bprice} → </span><span class="price2">${book.bfinalPrice}(↓${ book.bdiscount}%)</span></h3></li>
			                                 	<li> ${book.bcontent}</li>
			                          		</ul>
		                              	</div>
		                             
		                            	<div id ="shopping">
											<ul id="bb">
												<li>
												<label><input type="checkbox" id="ch1" name="chBox" value="1"></label>
												<label for = "quantity">
												<input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50">
												</label>
												</li>	
												<li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">바로구매</button></li>
												<li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button></li>
											</ul>
						
										</div>
									</div>
							
									
                             </c:forEach>
                        	
                       
                     <div id="pager">
                     
	                     	<a style="border: 2px solid #998064;" class="btn  btn-sm mr-1" href="searchresult?pageNo=1&btitle=${btitle}">처음</a>
	                     	<c:if test="${pager.groupNo>1}">
	                     		<a style="border: 2px solid #998064;" class="btn  btn-sm mr-1" href="searchresult?pageNo=${pager.startPageNo-1}&btitle=${btitle}">이전</a>
	                     	</c:if>
	                     	<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
			                   <c:if test="${i == pager.pageNo }">
			                    	<a style="background-color: #B8A791; border: 1px solid grey;" class="btn  btn-sm mr-1 ml-1" href="searchresult?pageNo=${i}&btitle=${btitle}">${i}</a> 
			                   </c:if>	 	
	                     	   <c:if test="${i != pager.pageNo }">
			                    	<a style="border: 1px solid grey;" class="btn btn-sm mr-1 ml-1" href="searchresult?pageNo=${i}&btitle=${btitle}">${i}</a> 
			                   </c:if>	 
	                     	</c:forEach>
	                     	<c:if test="${pager.groupNo<pager.totalGroupNo}">
	                     		<a style="border: 2px solid #998064;" class="btn btn-sm mr-1 ml-1" href="searchresult?pageNo=${pager.endPageNo+1}&btitle=${btitle}">다음</a>
	                     	</c:if>
	                     	<a style="border: 2px solid #998064;" class="btn  btn-sm " href="searchresult?pageNo=${pager.totalPageNo}&btitle=${btitle}">맨끝</a>
                     	
                     </div>
                  </div>
               
               
               
               
               
         
			
			
		</div>
		<jsp:include page="/WEB-INF/views/common/Footer.jsp"/>
	</div>
</body>
</html>