<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Join page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_join">
		<center>
			환영합니다!<br/><br/>
			<form action="join.do" method="post">
				<img src="image/link/link_signin.png" id="img_signin_logo"/>
				<table>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="member_id"/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="member_passwd"/></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="member_name"/></td>
					</tr>
					<tr>
						<td>메일</td>
						<td><input type="text" name="member_mail"/></td>
					</tr>
				</table>
				<input type="image" value="submit" src="image/button/but_l_signin.png" id="but_top_loginout"/>
			</form>
		</center>
	</div>
</body>
</html>