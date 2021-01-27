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
				<!-- 기본 필드 입력 -->
		        <div class="content">
		        	<form id="createForm" method="post" enctype="multipart/form-data" action="<%=application.getContextPath()%>/books-create">
			        	<div id="basic_field_layout">
			                <h2><b>기본 필드 입력</b></h2>
			                <div id="basic_first">
			                    <div id="basic_first_left">
			                    	<div class="form-group">
			                            <label for="isbn">ISBN:</label>
			                            <input type="text" class="form-control col-sm-8" id="isbn" name="isbn">
			                        </div>
			                        <span id="warning1"></span>
			                        <div class="form-group">
			                            <label for="btitle">제목:</label>
			                            <input type="text" class="form-control col-sm-8" id="btitle" name="btitle">
			                        </div>
			                        <span id="warning2"></span>
			                        <div class="form-group">
			                            <label for="bwriter">작가:</label>
			                            <div>
			                            	<input type="text" class="form-control col-sm-8" id="bwriter" name="bwriter" style="display: inline-block">
			                            	<button type="button" id="bwriterSearch" class="btn btn-secondary ml-2">검색</button>
			                            </div>
			                            <small id="bwriterResult" class="form-text text-danger"></small>
			                            <script>
			                            	$("#bwriterSearch").click(function() {});
			                            </script>
			                        </div>
			                        <span id="warning3"></span>
			                        <div class="form-group">
			                            <label for="btranslator">옮긴이:</label>
			                            <input type="text" class="form-control col-sm-8" id="btranslator" name="btranslator">
			                        </div>
			                        <div class="form-group">
			                            <label for="bprice">정가:</label>
			                            <input type="text" class="form-control col-sm-8" id="bprice" name="bprice">
			                        </div>
			                        <div class="form-group">
			                            <label for="bpublisher">출판사:</label>
			                            <input type="text" class="form-control col-sm-8" id="bpublisher" name="bpublisher">
			                        </div>
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
				                            <input type="text" class="form-control" id="bdiscount" name="bdiscount">
				                        </div>
				                        <div class="form-group">
				                            <label for="bdeliveryFee">배송비:</label>
				                            <input type="text" class="form-control" id="bdeliveryFee" name="bdeliveryFee">
				                        </div>
				                    </div>
				                    <div class="ml-3">
				                        <label for="bindex">목차:</label>
				                        <textarea class="form-control" rows="5" cols="70" id="bindex" name="bindex"></textarea>
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
				                            <td class="category_items">카테고리1</td>
				                            <td class="category_items">카테고리2</td>
				                            <td class="category_items">카테고리3</td>
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
				                    		$("#categorySelect").attr("value", event.target.innerText);
				                    	});
				                    </script>
			                    </div>
			                    
			                    <div id="date_first">
	                                <input type="date" id="bpublishDate" name="bpublishDate"/>
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
				                    	$("#publicationDate").change(() => {
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
			                <button id="btn-submit" class="btn btn-outline-secondary btn-lg" onclick="createSubmit()">등록</button>
			            </div>
		        	</form>
		        	<script>
		        		const createSubmit = () => {
		        			event.preventDefault();
		        			const createForm = document.querySelector("#createForm");
		        			if ($("#isbn").val() == null || $("#isbn").val() == "" ) {
			       				$("#warning1").html("* ISBN은 반드시 입력해야 합니다.");
			       				$("#warning1").css({
			       					"color": "red",
			       				});
			       				return;
			       			} else {
			       				$("#warning1").html("");
			       			}
			       			if ($("#title").val() == null || $("#title").val() == "") {
			       				$("#warning2").html("* 제목은 반드시 입력해야 합니다.");
			       				$("#warning2").css({
			       					"color": "red",
			       				});
			       				return;
			       			} else {
			       				$("#warning2").html("");
			       			}
			       			if ($("#writer").val() == null || $("#writer").val() == "") {
			       				$("#warning3").html("* 작가는 반드시 입력해야 합니다.");
			       				$("#warning3").css({
			       					"color": "red",
			       				});
			       				return;
			       			} else {
			       				$("#warning3").html("");
			       			}
			       			$("#bprice, #bdiscount, #bdeliveryFee")
		        			createForm.submit();
		        		}
		        	</script>
		        </div>
			</div>
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
		</div>
	</body>
</html>