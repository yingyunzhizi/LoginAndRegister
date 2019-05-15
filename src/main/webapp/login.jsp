<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() +"/"%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<table border="1" cellspacing="0">
			<tr>
				<td>用户</td>
				<td><input type="text" name="username" value="admin"/></td>
				<td></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password" value="admin"/></td>
				<td></td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td><input type="text" name="email"/></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登录"/>
				<a href="#">忘记密码 </a></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>    <a href="register.jsp">注册</a></td>
				<td></td>
			</tr>
		</table>
	</form>
</body>
</html>