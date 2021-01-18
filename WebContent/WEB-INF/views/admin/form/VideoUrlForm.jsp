<%@ page contentType="text/html; charset=UTF-8"%>

<div class="form-group" id="videos${videoIndex}">
    <label for="video${videoIndex}">관련 동영상 링크:</label>
    <input type="url" id="video${videoIndex}" name="video${videoIndex}" style="display: inline-block; width: 300px;"/>
    <%-- <button type="button" class="btn btn-sm" onclick="modifyVideoUrl(${videoIndex})">+</button>
	<button type="button" class="btn btn-sm" onclick="modifyVideoUrl(${videoIndex})">-</button> --%>
	<button type="button" class="btn btn-sm">+</button>
	<button type="button" class="btn btn-sm">-</button> 
</div>