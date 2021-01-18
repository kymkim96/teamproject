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
			
		<!-- 기본 필드 입력 -->
        <div class="content">
            <div id="basic_field_layout">
                <h2><b>기본 필드 입력</b></h2>
                <div id="basic_first">
                    <div id="basic_first_left">
                        <div class="form-group">
                            <label for="title">제목:</label>
                            <input type="text" class="form-control" id="title" value="은교">
                        </div>
                        <div class="form-group">
                            <label for="writer">작가:</label>
                            <input type="text" class="form-control" id="writer" value="박범신">
                        </div>
                        <div class="form-group">
                            <label for="translator">옮긴이:</label>
                            <input type="text" class="form-control" id="translator" value="">
                        </div>
                        <div class="form-group">
                            <label for="price">정가:</label>
                            <input type="text" class="form-control" id="price" value="13,500원">
                        </div>
                        <div class="form-group">
                            <label for="publisher">출판사:</label>
                            <input type="text" class="form-control" id="publisher" value="문학동네">
                        </div>
                        <div class="form-group">
                            <label for="isbn">ISBN:</label>
                            <input type="text" class="form-control" id="isbn" value="9788954610681">
                        </div>
                    </div>
                    <div id="basic_first_right">
                        <div class="input_item">
                            <div class="form-group">
                                <label for="imgUrl">이미지 URL 업로드:</label>
                                <input type="file" id="imgUrl" name="imgUrl"/>
                            </div>
                        </div>
                        <div class="input_item">
                            <div class="form-group">
                                <label for="bestSeller">베스트셀러 여부:</label>
                                <input type="checkbox" id="bestSeller" name="bestSeller"/>
                            </div>
                        </div>
                        <div class="input_item_inner_list">
                            <%@ include file="/WEB-INF/views/admin/form/VideoUrlForm.jsp" %>
                            <script src="<%=application.getContextPath()%>/resources/js/modifyVideoUrl.js"></script>
                        </div>
                    </div>
                </div>
                <div id="basic_second">
                    <div class="content">
                        <div class="form-group">
                            <label for="page">쪽수:</label>
                            <input type="text" class="form-control" id="page" value="406쪽">
                        </div>
                        <div class="form-group">
                            <label for="weight">무게:</label>
                            <input type="text" class="form-control" id="weight" value="0.5kg">
                        </div>
                        <div class="form-group">
                            <label for="size">크기:</label>
                            <input type="text" class="form-control" id="size" value="128 X 188">
                        </div>
                    </div>
                    <div class="book_information">
                        <label for="information">책 소개:</label>
                        <textarea class="form-control" rows="5" cols="70" id="information"></textarea>
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
	                                <input readonly class="form-control" id="category_select" name="category_select">
	                            </div>
	                        </li>
	                        <li>
	                            <div class="form-group">
	                                <label for="new_category">새로운 카테고리 입력:</label>
	                                <input type="text" class="form-control" id="new_category" name="new_category">
	                            </div>
	                        </li>
	                        <li>
	                            <button type="button" id="btn-category-add" class="btn btn-outline-secondary">추가</button>
	                        </li>
	                    </ul>
                    </div>
                    
                    <div id="date_first">
                              <input type="date" id="datePicker" name="datePicker"/>
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
                    </div>
                </div>
            </div>

            <div id="finish_line">
                <button type="button" id="btn-update" class="btn btn-outline-secondary btn-lg" style="margin-right: 10px;">수정</button>
                <button type="button" id="btn-temporary" class="btn btn-outline-secondary btn-lg">임시저장</button>
            </div>
        </div>
			
			<%@ include file="/WEB-INF/views/common/Footer.jsp" %>
		</div>
	</body>
</html>