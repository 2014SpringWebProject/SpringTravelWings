<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login page</title>
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<center>
		회원이시면 로그인을, 회원이 아니시면 회원가입을 해주세요.<br/><br/>
		<div id="main_login_login">
			<form action="login.do" method="post">
				<table>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="member_id"/></td>
						<td rowspan="2"><input type="image" value="submit" src="image/button/but_l_login.png" id="img_login_but"/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="member_passwd"/></td>
					</tr>
					<tr>
						<td colspan="3"><a href="search_page.do">아이디/비밀번호 찾기</a></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="main_login_ad">
		</div>
	</center>
</body>
</html>