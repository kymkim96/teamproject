$(()=>{
	$("#btnmainInfo").click(()=>{
		$(".mainInfo").show();
		$(".memberReview").hide();
	});
	
	$("#btnmemberReview").click(()=>{
		$(".mainInfo").hide();
		$(".memberReview").show();

	});
	
	let var1 =0;
	
	$("#plus").click(()=>{
		++var1;
		console.log(var1);
		$("#amount").text(var1);
	});
	
	$("#minus").click(()=>{
		--var1;
		console.log(var1);
		if(var1<0){
			var1 = 0;
		}
		$("#amount").text(var1);
	});
  			
}); /*레디안에 넣어*/