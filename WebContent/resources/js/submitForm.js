const submitForm = () => {
	event.preventDefault();
	$("#warningIsbn").html("");
	$("#warningTitle").html("");
	// $("#warningWriter").html("");
	$("#warningPublisher").html("");
	$("#warningPublishDate").html("");
	$("#warningPrice").html("");
	$("#warningContent").html("");
	$("#warningIndex").html("");
	const bookForm = document.querySelector("#bookForm");
	if ($("#isbn").val() == null || $("#isbn").val() == "" ) {
		$("#warningIsbn").html("* ISBN은 반드시 입력해야 합니다.");
		$("#warningIsbn").css({
			"color": "red",
		});
		return;
	}
	if ($("#btitleInput").val() == null || $("#btitleInput").val() == "") {
		$("#warningTitle").html("* 제목은 반드시 입력해야 합니다.");
		$("#warningTitle").css({
			"color": "red",
		});
		return;
	}
	/* if ($("#bwriter").val() == null || $("#bwriter").val() == "") {
		$("#warningWriter").html("* 작가는 반드시 입력해야 합니다.");
		$("#warningWriter").css({
			"color": "red",
		});
		return;
	} */
	if ($("#bpublisher").val() == null || $("#bpublisher").val() == "") {
		$("#warningPublisher").html("* 출판사는 반드시 입력해야 합니다.");
		$("#warningPublisher").css({
			"color": "red",
		});
		return;
	}
	if ($("#bpublishDate").val() == null || $("#bpublishDate").val() == "") {
		$("#warningPublishDate").html("* 출간일은 반드시 입력해야 합니다.");
		$("#warningPublishDate").css({
			"color": "red",
		});
		return;
	}
	if ($("#bprice").val() == null || $("#bprice").val() == "") {
		$("#warningPrice").html("* 정가는 반드시 입력해야 합니다.");
		$("#warningPrice").css({
			"color": "red",
		});
		return;
	}
	if ($("#bcontent").val() == null || $("#bcontent").val() == "") {
		$("#warningContent").html("* 책 소개는 반드시 입력해야 합니다.");
		$("#warningContent").css({
			"color": "red",
		});
		return;
	}
	if ($("#bindex").val() == null || $("#bindex").val() == "") {
		$("#warningIndex").html("* 목차는 반드시 입력해야 합니다.");
		$("#warningIndex").css({
			"color": "red",
		});
		return;
	}
	bookForm.submit();
}