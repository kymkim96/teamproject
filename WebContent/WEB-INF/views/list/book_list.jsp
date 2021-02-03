<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
         <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_soyoung.css">
         <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_sigyung.css">
        
   
   </head>

   <body>
      <div id="layout">
   
         <%@include file="/WEB-INF/views/common/Header.jsp" %>

         <article>
         <div class="content">
          <div class="general_info">
            <c:if test="${categoriesCategoryName != null}">
            <span class="shopping_cart_title"></span> <span><strong style="font-size:xx-large;">${categoriesCategoryName}</strong> 리스트 입니다.</span> <div style="display:inline-block; width:80px"></div>
            </c:if>
         </div>
		</div>
		
		<!-- 상품 정보 -->
 	    <c:forEach var="book" items="${list}">	
		 	 <div><br/></div>
       
        	 <div id="item1">
         	   	<a href="<%=application.getContextPath()%>/detail?param1=${book.isbn}">
         	  	<img alt="book.jpg" 
         	  		 src='<c:if test="${book.bimgLink != null}">${book.bimgLink}</c:if>
         		 	   	  <c:if test="${book.bimgLink == null}"><%=application.getContextPath() %>/books-image?isbn=${book.isbn}</c:if>' height="350px"> </a>
         		 	
         
	             <div id ="book_data" >
	               	<ul id="data">
	                  <li><h4><strong><a href="<%=application.getContextPath()%>/detail?param1=${book.isbn}">${book.btitle} </a></strong></h4></li><br/>
	                  <li><h4><c:forEach var="writer" items="${book.bookWriterlist}">저자 : ${writer.wname} </c:forEach></h4></li><br/>
	                  <li><h4>출판사 : ${book.bpublisher}</h4></li><br/>
	                  <li>
		                  <h4>
		                	<c:if test="${book.bdiscount == 0}">
			               		<span>
			                  		정가 : 
			                	
			                  	<fmt:formatNumber 
									value="${book.bprice}"/>원
			                  	</span><br/>
		               		</c:if>
		                
		                
		                	<c:if test="${book.bdiscount != 0}">
			                 	<span style="text-decoration: line-through;">
			                  		정가 : 
			                  	<fmt:formatNumber 
									value="${book.bprice}"/>원
			                  	</span><br/>
			                 
						      	<span class="price2">할인율 : 
							       <fmt:formatNumber
							      value="${book.bdiscount}" />% <br/>
						     	</span> 
						   
						      	<span>판매가격: <fmt:formatNumber 
							     		value="${book.bfinalPrice}"/>원		
						      	</span>
					      	</c:if>
					      </h4>
				      </li>
	                
	                  <br/>	
	                  						
	                  <li>    
			             <h5 style=" display:-webkit-box; word-wrap:break-word; -webkit-line-clamp:3; -webkit-box-orient:vertical; width:1000px;  overflow: hidden; text-overflow: ellipsis;"> 
			              		${book.bcontent}          
		                  </h5>
	                  </li>
	                </ul>
	             </div>
	    
	                
       		 </div>
   </c:forEach>
		
		
		<!-- pager -->
		<div class="d-flex justify-content-center">
			 		
             	<a style="border: 2px solid #998064;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=1">맨처음</a>				
             
               <c:if test="${pager.groupNo>1}">
                	<a style="border: 2px solid #998064;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.startPageNo-1}">이전</a>
             	</c:if>	
             	   				 	
                <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
               		<c:if test="${i == pager.pageNo}">
               			<a style="background-color:#B8A791; border:1px solid grey;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${i}">${i}</a>
               		</c:if>
               		<c:if test="${i != pager.pageNo}">
               			<a style="background-color:#B8A791; border:1px solid grey;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${i}">${i}</a>
               		</c:if>
            	</c:forEach>
                				 	 
             	<c:if test="${pager.groupNo<pager.totalGroupNo}">	 
                	<a style="border: 2px solid #998064;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.endPageNo+1}">다음</a>
      		  	</c:if>
      							 
                	<a style="border: 2px solid #998064;" class="btn btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.totalPageNo}">맨끝</a>
            	
        </div>
      </article>
   

      
      <%@include file="/WEB-INF/views/common/Footer.jsp" %>
      </div>
   </body>
</html>