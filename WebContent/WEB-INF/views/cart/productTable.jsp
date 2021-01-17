<%@ page contentType="text/html; charset=UTF-8"%>

<tr>
   	<td>
       <div class="cart_product_name">
           <img class="detail_1_link" src="<%=application.getContextPath()%>/resources/img/은교_작은사이즈.jpg" width="50px">
           <div style="margin-left: 5px">
                <div class="detail_1_link">[도서] 은교</div>
                <div>박범신 | 문학동네</div>
            </div>
        </div>
    </td>
    <td class="align-middle">2021년 01월 14일(목)</td>
    <td class="align-middle">12,150원</td>
    <td>
        <div>
            <input type="number" id="item_count" name="item_count"/>
            <button class="btn btn-outline-secondary btn-sm">수정</button>
        </div>
    </td>
    <td class="align-middle">12,150원</td>
    <td>
        <div>
            <button id="button_wishlist" class="btn btn-outline-secondary btn-sm">위시리스트</button>
            <button class="btn btn-outline-secondary btn-sm">삭제</button>
        </div>
    </td>
    <td class="align-middle">
        <input type="checkbox" id="cart_item" name="cart_item"/>
    </td>
</tr>