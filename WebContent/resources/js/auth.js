$(()=>{
				
	$("#join").click(()=>{
		$("#form1").hide();
		$("#form2").show();
		$(".loginForm").hide();
		
	});
	

	
});
			

$(()=>{
	
	$("#qr1").click(()=>{
		$("#form1").hide();
		$("#form2").hide();
		$("#form3").hide();
		$(".loginForm").hide();
		
		$("#qr2").show();
	});
	

	
});
			
			
const f1=()=>{
					
	event.preventDefault();
	const f2 = document.querySelector("#uid");
	const f3 = document.querySelector("#upassword");
	if(f2.value===""||f3.value===""){
		const f4 = document.querySelector("#error");
		f4.innerHTML="아이디와 비밀번호는 필수 입력입니다.";
		f4.style.color="red";
		return;
	}
	const loginf = document.querySelector("#form1");
	loginf.submit();
	
	
};
				
				
const ff=()=>{
					
	event.preventDefault();
	const f2 = document.querySelector("#uaid");
	const f3 = document.querySelector("#uapassword");
	const f4 = document.querySelector("#uaname");
	if(f2.value===""||f3.value===""||f4.value===""){
		const f5 = document.querySelector("#error1");
		f5.innerHTML="이름, 아이디, 비밀번호는 필수 입력입니다.";
		f5.style.color="red";
		return;
	}
	const loginf = document.querySelector("#formf");
	loginf.submit();
	
	
};				
				
				

				
				
			