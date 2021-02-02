<%@ page  contentType="text/html; charset=UTF-8"%>

<div class ="subInfo" id="reviews" style="margin-bottom: 10px; font-family: 'NEXON Lv1 Gothic OTF Bold'; 
					color: #917354;">
	<h4> 회원리뷰 수정하기</h4><hr/>
</div>

<div class="review_update">
	<form enctype="multipart/form-data" name="reviewform" 
		action="<%=application.getContextPath()%>/review/reviewupdate1" method="post">
		
        <input id="usersUid" name="usersUid"   type="hidden" value="${sessionUaid}"/>
        <input id="booksIsbn" name="booksIsbn" type="hidden" value="${isbn}"/>
        
 
        <div class="form-group">
          <label for="rstar">별점</label>
          <input type="number" class="form-control" id="rstar" name="rstar"/>
          <small class="form-text text-muted">필수 입력 사항입니다.</small>
        </div> 	 	
          
        <div class="d-inline form-group">
          <label for="rcontent"> 내용 </label>
          <textarea id="rcontent" name="rcontent" class="form-control" rows="5" cols="50"></textarea>
          
        </div>
         
    	<button class="d-inline btn btn-primary"> 저장</button>
   	</form>
</div>