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
                    <div id="basic_first_image">
                        <div class="input_item">
                            <div class="form-group">
                                <label for="img_url">이미지 URL 업로드:</label>
                                <input type="file" id="img_url" name="img_rul"/>
                            </div>
                        </div>
                        <div id="basic_first_image_thumbnail">
                            <img width="300px" src="<%=application.getContextPath()%>/resources/img/은교.jpg" class="img-thumbnail" alt="미리보기">
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

            <!-- 카테고리 선택 -->
            <div id="category_layout">
                <h2>카테고리 선택</h2>
                <div id="category_first">
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
                                <input readonly class="form-control" id="category_select" value="카테고리1">
                            </div>
                        </li>
                        <li>
                            <div class="form-group">
                                <label for="new_category">새로운 카테고리 입력:</label>
                                <input type="text" class="form-control" id="new_category" value="카테고리10">
                            </div>
                        </li>
                        <li>
                            <button type="button" id="btn-category-add" class="btn btn-outline-secondary">추가</button>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- 출간일 선택 -->
            <div id="publication_date_layout">
                <h2>출간일 선택</h2>
                <div id="date_first">
                    <table id="calendar">
                        <tr>
                            <td id="calendar_items_top" colspan="7">
                                <div>
                                    <input type="date" id="datePicker" name="datePicker"/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="calendar_items">일</td>
                            <td class="calendar_items">월</td>
                            <td class="calendar_items">화</td>
                            <td class="calendar_items">수</td>
                            <td class="calendar_items">목</td>
                            <td class="calendar_items">금</td>
                            <td class="calendar_items">토</td>
                        </tr>
                        <tr>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items">1</td>
                            <td class="calendar_items">2</td>
                        </tr>
                        <tr>
                            <td class="calendar_items">3</td>
                            <td class="calendar_items">4</td>
                            <td class="calendar_items">5</td>
                            <td class="calendar_items">6</td>
                            <td class="calendar_items">7</td>
                            <td class="calendar_items">8</td>
                            <td class="calendar_items">9</td>
                        </tr>
                        <tr>
                            <td class="calendar_items">10</td>
                            <td class="calendar_items">11</td>
                            <td class="calendar_items">12</td>
                            <td class="calendar_items">13</td>
                            <td class="calendar_items">14</td>
                            <td class="calendar_items">15</td>
                            <td class="calendar_items">16</td>
                        </tr>
                        <tr>
                            <td class="calendar_items">17</td>
                            <td class="calendar_items">18</td>
                            <td class="calendar_items">19</td>
                            <td class="calendar_items">20</td>
                            <td class="calendar_items">21</td>
                            <td class="calendar_items">22</td>
                            <td class="calendar_items">23</td>
                        </tr>
                        <tr>
                            <td class="calendar_items">24</td>
                            <td class="calendar_items">25</td>
                            <td class="calendar_items">26</td>
                            <td class="calendar_items">27</td>
                            <td class="calendar_items">28</td>
                            <td class="calendar_items">29</td>
                            <td class="calendar_items">30</td>
                        </tr>
                        <tr>
                            <td class="calendar_items">31</td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                            <td class="calendar_items"></td>
                        </tr>
                    </table>
                    <ul style="list-style-type: none">
                        <li>
                            <div class="form-group">
                                <label for="selectedDate">선택한 출간일:</label>
                                <input readonly class="form-control" id="selectedDate" value="2021년 1월 9일">
                            </div>
                        </li>
                        <li>
                            <button type="button" id="btn-ini" class="btn btn-outline-secondary">초기화</button>
                        </li>
                    </ul>
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