function logout(){
	var c = confirm("是否确认退出系统？");
	if (c) {
		window.location.href =" /phoenix_test/land/logout";
	}
}

function goTest(stage,now){
	if (stage > now) {
		var c = confirm("請在特定的時間進行本測試");
	}else{
		window.location.href =" /phoenix_test/land/experiment/today";
	}
}