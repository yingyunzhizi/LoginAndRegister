<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() +"/"%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">

	var code = "";
	function sendCheckCode(){
		var email = $("#email").val();
		debugger
        $.get("userController/sendEmailToCheck?email="+email,"",function(data){
            code = data;
        },"");
	}

    $(function () {
		$("#checkEmail").submit(function () {
			var checkCode = $("#checkCode").val();
			if (checkCode != code){
				$("#msg").html("验证码错误");
				return false;
			}
			return true;
        })
    })


	

</script>
</head>
<body>
	
	<form action="#" method="post" id="checkEmail">
		<table border="1" cellspacing="0">
			<tr>
				<td>用户</td>
				<td><input type="text" name="username" /></td>
				<td></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password"/></td>
				<td></td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td><input type="text" name="email" id="email"/></td>
				<td onclick="sendCheckCode()"><input type="button" value="发送验证码"></td>
			</tr>
			<tr>
				<td>请输入验证码</td>
				<td><input type="text" id="checkCode"></td>
				<td><span id="msg"></span></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="注册"/></td>
			</tr>
		</table>
	</form>
</body>
</html>