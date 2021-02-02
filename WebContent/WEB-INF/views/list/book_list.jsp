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
        <!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
   
   </head>

   <body>
      <div id="layout">
   
         <%@include file="/WEB-INF/views/common/Header.jsp" %>

         <article>
            <div id="add">   
            	<h3>${categoriesCategoryName}</h3>

               <strong>${categoriesCategoryName}</strong>에 <strong>총 1,000권</strong>의 상품이 등록되어 있습니다.
         	         	
	           <div id = "choose">
					  <!--<input type="checkbox" id="allcheckbox" name="chBox"  value="all"><laber for="allcheck">전체</laber> -->	                     
	                  <%-- <button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button>
	                  <button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">위시리스트</button>  --%>
	    	   </div>
    		</div>     
		
		
		<!-- 상품 정보 -->
 	    <c:forEach var="book" items="${list}">	
		 	 <div><br/></div>
       
        	 <div id="item1">
         	  	<img alt="book.jpg" 
         	  		 src='<c:if test="${book.bimgLink != null}">${book.bimgLink}</c:if>
         		 	   	  <c:if test="${book.bimgLink == null}"><%=application.getContextPath() %>/books-image?isbn=${book.isbn}</c:if>' height="350px"> 
         		 	
         
	             <div id ="book_data" >
	               	<ul id="data">
	                  <li><h4><strong><a href="<%=application.getContextPath()%>/detail?param1=${book.isbn}">${book.btitle} </a></strong></h4></li>
	                  <li><h4>발행자 : ${book.bpublisher}</h4></li>
	                  <li><h3><span class="price1" style= "text-decoration: line-through;">정가 : ${book.bprice}원 </span><br/>
	                  										<span class="price2">할인율 : ${book.bdiscount}%  <br/> 판매가격: ${book.bfinalPrice}원</span></h3></li>
	                  									
	                  <li>
		                  <h5 style=" width:800px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
		                  	${book.bcontent}          
		                  </h5>
	                  </li>
	                </ul>
	             </div>
	    
	                <div id ="shopping" >
	                  <ul id="bb">
	                     <li>
	                     <label><input type="checkbox" id="ch1" name="chBox" value="1"></label> 
	                     <label for = "quantity">
	                     <input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50" value="1"></label>
	                     </li>    
	                     <li><button id="cart" class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">바로구매</button></li>      
	                     <li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button></li> 	
	                
	                  </ul>        
	               	</div> 
       		 </div>
   </c:forEach>
		
		
		<!-- pager -->
		<div class="d-flex justify-content-center">
			 		
             	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=1">맨처음</a>				
             
               <c:if test="${pager.groupNo>1}">
                	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.startPageNo-1}">이전</a>
             	</c:if>	
             	   				 	
                <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
               		<c:if test="${i == pager.pageNo}">
               			<a class="btn btn-danger btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${i}">${i}</a>
               		</c:if>
               		<c:if test="${i != pager.pageNo}">
               			<a class="btn btn-outline-success btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${i}">${i}</a>
               		</c:if>
            	</c:forEach>
                				 	 
             	<c:if test="${pager.groupNo<pager.totalGroupNo}">	 
                	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.endPageNo+1}">다음</a>
      		  	</c:if>
      							 
                	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?categoriesCategoryName=${categoriesCategoryName}&pageNo=${pager.totalPageNo}">맨끝</a>
            	
        </div>
      </article>
   

      
      <%@include file="/WEB-INF/views/common/Footer.jsp" %>
      </div>
   </body>
</html>