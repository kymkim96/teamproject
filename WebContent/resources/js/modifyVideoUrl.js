let clickCount = 1;
const modifyVideoUrl = function(videoIndex) {
	if (event.target.innerText === "+") {
		console.log(clickCount);
		$.ajax({
			url: "video-form",
			method: "get",
			data: {
				videoIndex: ++clickCount,
			},
			success: function(data) {
				$(`#videos${videoIndex}`).after(data);
			},
		})
	} else {
		if (videoIndex > 1) {
			$(`#videos${videoIndex}`).detach();	
		}
	}
}