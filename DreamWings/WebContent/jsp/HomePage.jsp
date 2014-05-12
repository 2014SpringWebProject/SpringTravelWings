<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>

<body>
<!-- test -->
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div>
		<div id="main_home_ad">MAIN ADVERTISEMENT</div>
		<div id="main_home_login">
			<form action="login.do" method="post">
				<table align="right">	
					<tr>
						<td>아이디</td>
						<td><input type="text" name="member_id"/></td>
						<td rowspan="2"><input type="image" value="submit" src="image/button/but_l_login.png" id="img_login_but"/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="member_passwd"/></td>
					</tr>
				</table>
			</form>
		</div>
		<hr/>
		<table id="main_home_best">
			<tr>
				<td>IMAGE</td>
				<td>IMAGE</td>
				<td>IMAGE</td>
				<td>IMAGE</td>
			</tr>
			<tr>
				<td>TEXT</td>
				<td>TEXT</td>
				<td>TEXT</td>
				<td>TEXT</td>
			</tr>
		</table>
	</div>

</body>
</html>
