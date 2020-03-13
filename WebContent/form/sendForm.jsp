<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<div>
			<label for="userid">아이디</label>
			<input type="text" id="userid" name="userid"/>
		</div>
		<div>
			<label for="username">이름</label>
			<input type="text" id="username" name="username"/>
		</div>
		<div>
			<button type="button">전송</button>
		</div>
	</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$("button").click(function(){
	//form 안의 데이터를 전송하고 싶다.
	
	// form 데이터 가져오기 - 폼에 있는거 먼저 가지고 와야함.
	/* let userid = $("#userid").val();
	let username = $("#username").val();*/
	
	//let formData = $("form").serialize();
	let formData = $("form").serializeArray();
	
	
	$.ajax({
		url: 'sendFormAjax.jsp',
		type: 'post',
		data: formData
		/* data: {
			userid:userid,
			username:username
		} */
		
	})
})
</script>
</body>
</html>