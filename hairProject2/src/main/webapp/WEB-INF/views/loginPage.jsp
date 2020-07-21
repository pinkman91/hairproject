<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="resources/css/sb-admin-2.css">
<link rel="stylesheet" href="resources/css/sb-admin-2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#sub").on("click",function(){
			var userId= $("#idform").val();
			var userPassword= $("#passwordForm").val()
			alert("아이디 : "+userId+"\n비밀번호 : "+userPassword);	
		})
		
	});
</script>
<style>
.aaa {
	width: 500px;
	margin: 50px auto;
	}
.ssss{
	width: 100%;
	height: 200px;
	background-color: black;
	color: white;
	}
.ddd{
	margin: 0 auto;
	padding: 50px 0;
	width: 100px;
	}
</style>
</head>
<body>

	<div class="ssss">
		<p class="ddd">로고이미지</p>
	</div>
	<div class="container aaa">
		<div class="p-5 ">
			<form class="user">
				<div class="form-group">
					<input type="text" id="idForm" class="form-control form-control-user"
						 aria-describedby="emailHelp"
						placeholder="아이디 입력">
				</div>
				<div class="form-group">
					<input type="password" id="passwordForm" class="form-control form-control-user"
						 placeholder="비밀번호">
				</div>
				<input type="submit" id="sub" class="btn btn-primary btn-user btn-block" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>
