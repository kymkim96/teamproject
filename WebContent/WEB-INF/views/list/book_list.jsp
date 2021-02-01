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
            
            
            <h3>현대소설</h3>

            <div id="add">   
               <strong>현대소설</strong>에 <strong>총 1,000권</strong>의 상품이 등록되어 있습니다.
        <div id = "choose">
                  <input type="checkbox" id="allcheckbox" name="chBox"  value="all"><laber for="allcheck">전체</laber>         
                     
                  <button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button>
                  <button class="chk"   onclick="document.location='<%=application.getContextPath()%>/cart/index'">위시리스트</button> 
             
            
  <!--   <script>
    	$("#allcheck").click (function(){
    		var chk = $("#allcheckbox").prop("checked");
    		if(chk){
    			$(".chBox").prop("checked",true);
    		}else{
    			$(".chBox").prop("checked", false);
    		}
    	});
    </script> -->
            
      </div>
    </div>     
			
<!-- ----------------------------------------------------------------------------------------------------------------------------------------------------- -->
     <c:forEach var="book" items="${list}">	
	 	   <div>
       		<br/>
      	  </div>
       
         <div id="item1">
         	 
         	  <img alt="book.jpg" 
         	  	  src=<c:if test="${book.bimgLink != null}">${book.bimgLink}</c:if>
         		 	    <c:if test="${book.bimgLink == null}">${book.bimgFilename}</c:if> height="350px"> 
         		 	
         
            <div id ="book_data" >
               <ul id="data">
                  <li><h4><strong ><a href="<%=application.getContextPath()%>/detail/1">책이름 ${book.btitle} </a></strong></h4></li>
              	 
                  <li>작가: ${writer.wname}</li>
                  <li><h3><span class="price1">가격 : ${book.bprice}원 --> ${book.bdiscount}%</span></h3></li>
                  <li>책 내용: ${book.bcontent}</li>
               </ul>
            </div>
               
     
               <div id ="shopping" >
                  <ul id="bb">
                     <li>
                     <label><input type="checkbox" id="ch1" name="chBox" value="1"></label>
                     
                      <!--  <script>
						    $(".chBox").click(function(){
						    	$("#allcheck").prop("checked", false);
					    });
					    </script> -->
					                     
                     
                     <label for = "quantity">
                     <input type="number" placeholder="수량" id="quantity" name="quantity" min="1" max="50" value="1">
                     </label>
                     </li>   
                     
                   <%--   <a class= "btn btn-primary " href="document.location='<%=application.getContextPath()%>/cart/index'">바로구매</a><br/>
                     <a class= "btn btn-primary btn-sm" href="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</a> --%>
                     
                   
                    <li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">바로구매</button></li>
                     <li><button class="btn btn-primary" onclick="document.location='<%=application.getContextPath()%>/cart/index'">쇼핑카트담기</button></li> 
                  		
                  </ul>
               </div>
         </div>

   </c:forEach>
		
			<div class="d-flex justify-content-center">
             <a class="btn btn-outline-warning btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=1">처음</a>
                				 
             <!-- 시작 페이지일 떄는 이전이 안 보여야함. -->
               <c:if test="${pager.groupNo >1}">
                	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=${pager.startPageNo-1}">이전</a>
               </c:if>	
                				 	
               <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
               	<c:if test="${i == pager.pageNo}">
               		<a class="btn btn-danger btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=${i}">${i}</a>
               	</c:if>
               	<c:if test="${i != pager.pageNo}">
               		<a class="btn btn-outline-success btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=${i}">${i}</a>
               	</c:if>
              </c:forEach>
                				 	 
              <c:if test="${pager.groupNo < pager.totalGroupNo}">	 
                	<a class="btn btn-outline-warning btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=${pager.endPageNo+1}">다음</a>
      		  </c:if>
      							 
                	 <a class="btn btn-outline-warning btn-sm mr-1" href="book_list?category_name=${category_name}&pageNo=${pager.totalPageNo}">맨끝</a><!-- 컨트롤러에서 model.addAttribute("pager", pager);넣어줌. -->
        </div>
    			 

      </article>
   

      
      <%@include file="/WEB-INF/views/common/Footer.jsp" %>
      </div>
   </body>
</html>