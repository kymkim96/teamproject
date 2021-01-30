<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>One Million Dreams</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/style_sigyung.css">
	</head>
	<body>	
		<div id="layout">
			<%@ include file="/WEB-INF/views/common/Header.jsp" %>
		        <div class="content">
			        <h1 class="mt-3 mb-5"><b>등록 페이지</b></h1>
		        
		        	<form id="bookForm" method="post" enctype="multipart/form-data" action="<%=application.getContextPath()%>/books-create">
		        		<!-- 기본 필드 입력 -->
			        	<div id="basic_field_layout">
			                <h2><b>기본 필드 입력</b></h2>
			                <div id="basic_first">
			                    <div id="basic_first_left">
			                    	<div class="form-group">
			                            <label for="isbn">ISBN:</label>
			                            <input type="text" class="form-control col-sm-8" id="isbn" name="isbn">
			                        </div>
			                        <span id="warningIsbn">${result}</span>
			                        <div class="form-group">
			                            <label for="btitle">제목:</label>
			                            <input type="text" class="form-control col-sm-8" id="btitle" name="btitle">
			                        </div>
			                        <span id="warningTitle"></span>
			                        <div class="form-group">
			                            <label for="bwriter">작가:</label>
			                            <div>
			                            	<input type="text" class="form-control col-sm-8" id="bwriter" name="bwriter" style="display: inline-block">
			                            	<button type="button" id="bwriterAdd" class="btn btn-secondary ml-2">추가</button>
			                            </div>
			                            <div style="overflow-y: scroll; height: 3rem;">
			                            	<small id="bwriterList"></small>			                            
			                            </div>
			                            <small id="bwriterResult" class="form-text text-danger"></small>
			                            <script>
			                            	$("#bwriterAdd").click(function() {
			                            		writer = $("#bwriter").val();
			                            		$("#bwriterList").append(writer + " ");
			                            		$("#bwriter").after('<input type="hidden" name="bwriters" value="' + writer + '">');
			                            	});
			                            </script>
			                        </div>
			                        <span id="warningWriter"></span>
			                        <div class="form-group">
			                            <label for="btranslator">옮긴이:</label>
			                            <input type="text" class="form-control col-sm-8" id="btranslator" name="btranslator">
			                        </div>
			                        <div class="form-group">
			                            <label for="bprice">정가:</label>
			                            <input type="number" class="form-control col-sm-8" id="bprice" name="bprice" value="0">
			                        </div>
			                        <span id="warningPrice"></span>
			                        <div class="form-group">
			                            <label for="bpublisher">출판사:</label>
			                            <input type="text" class="form-control col-sm-8" id="bpublisher" name="bpublisher">
			                        </div>
			                        <span id="warningPublisher"></span>
			                    </div>
			                    <div id="basic_first_right">
			                        <div class="input_item">
			                            <div class="form-group">
			                                <label for="bimg">이미지 파일 업로드:</label>
			                                <input type="file" id="bimg" name="bimg"/>
			                            </div>
			                        </div>
			                        <div class="input_item">
			                            <div class="form-group">
			                                <label for="bimgLink">이미지 URL 업로드:</label>
			                                <input type="text" class="form-control" id="bimgLink" name="bimgLink" style="display: inline-block; width: 300px;"/>
			                            </div>
			                        </div>
			                        <div class="input_item">
			                            <div class="form-group">
			                                <label for="bestSeller">베스트셀러 여부:</label>
			                                <input type="checkbox" id="bestSeller" name="bestSeller"/>
			                            </div>
			                        </div>
			                        <div class="input_item">
			                        	<div class="form-group">
										    <label for="bvideoLink">관련 동영상 링크:</label>
										    <input type="text" class="form-control" id="bvideoLink" name="bvideoLink" style="display: inline-block; width: 300px;"/>
										</div>
			                        </div>
			                        <div class="input_item">
			                        	<div>
				                        	<label for="bcontent">책 소개:</label>
					                        <textarea class="form-control" rows="10" cols="70" id="bcontent" name="bcontent"></textarea>
			                        	</div>
			                        </div>
			                        <span id="warningContent"></span>
			                    </div>
			                </div>
			                <div id="basic_second">
			                	<div>
			                		<div class="form-group" style="width: 500px;">
			                            <label for="bsubTitle">부제목:</label>
			                            <input type="text" class="form-control" id="bsubTitle" name="bsubTitle">
			                        </div>
			                	</div>
			                	<div class="d-flex">
			                		<div class="content">
				                        <div class="form-group">
				                            <label for="bdiscount">할인율:</label>
				                            <input type="number" class="form-control" id="bdiscount" name="bdiscount" value="0">
				                        </div>
				                        <div class="form-group">
				                            <label for="bdeliveryFee">배송비:</label>
				                            <input type="number" class="form-control" id="bdeliveryFee" name="bdeliveryFee" value="0">
				                        </div>
				                    </div>
				                    <div class="ml-3">
				                        <label for="bindex">목차:</label>
				                        <textarea class="form-control" rows="5" cols="70" id="bindex" name="bindex"></textarea>
				                        <span id="warningIndex"></span>
				                    </div>
			                	</div>
			                </div>
			            </div>
			
			            <!-- 카테고리  및 출간일 선택 -->
			            <div id="category_calander_layout">
			                <h2>카테고리 및 출간일 선택</h2>
			                <div id="category_calander_content">
			                    
			                    <div id="category_calander_first">
			                    	<table class="category_table">
				                        <tr>
				                            <td class="category_items">현대소설</td>
				                            <td class="category_items">자기계발서</td>
				                            <td class="category_items">해외소설</td>
				                        </tr>
				                        <tr>
				                            <td class="category_items">카테고리4</td>
				                            <td class="category_items">카테고리5</td>
				                            <td class="category_items">카테고리6</td>
				                        </tr>
				                        <tr>
				                            <td class="category_items">카테고리7</td>
				                            <td class="category_items">카테고리8</td>
				                            <td class="category_items">카테고리9</td>
				                        </tr>
				                    </table>
				                    <ul id="category_first_right">
				                        <li>
				                            <div class="form-group">
				                                <input readonly class="form-control" id="categoriesCategoryName" name="categoriesCategoryName">
				                            </div>
				                        </li>
				                        <li>
				                            <div class="form-group">
				                                <label for="newCategory">새로운 카테고리 입력:</label>
				                                <input type="text" class="form-control" id="newCategory" name="newCategory">
				                            </div>
				                        </li>
				                        <li>
				                            <button type="button" id="btn-category-add" class="btn btn-outline-secondary">추가</button>
				                        </li>
				                    </ul>
				                    <script>
				                    	$(".category_items").click(() => {
				                    		$("#categoriesCategoryName").attr("value", event.target.innerText);
				                    	});
				                    </script>
			                    </div>
			                    
			                    <div id="date_first">
			                    	<div>
			                    		<input type="date" id="bpublishDate" name="bpublishDate"/> </br>
	                                	<span id="warningPublishDate"></span>
			                    	</div>
	                                <ul id="date_first_right">
				                        <li>
				                            <div class="form-group">
				                                <label for="selectedDate">선택한 출간일:</label>
				                                <input readonly class="form-control" id="selectedDate">
				                            </div>
				                        </li>
				                        <li>
				                            <button type="button" id="btn-ini" class="btn btn-outline-secondary">초기화</button>
				                        </li>
				                    </ul>
				                    <script>
				                    	$("#bpublishDate").change(() => {
				                    		$("#selectedDate").attr("value", event.target.value);
				                    	});
				                    	$("#btn-ini").click(() => {
				                    		$("#selectedDate").removeAttr("value");
				                    	})
				                    </script>
	                            </div>
			                </div>
			            </div>
	
			            <div id="finish_line">
			                <button id="btn-submit" class="btn btn-outline-secondary btn-lg" onclick="submitForm()">등록</button>
			                <button type="button" id="btn-temporary" class="btn btn-outline-secondary btn-lg" onclick="">임시저장</button>
			            </div>
		        	</form>
		        	<script src="<%=application.getContextPath()%>/resources/js/submitForm.js"></script>
		        </div>
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
		</div>
	</body>
</html>