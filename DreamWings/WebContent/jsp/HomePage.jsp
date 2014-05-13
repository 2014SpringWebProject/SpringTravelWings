<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>

<body>

	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div>
		<div id="main_home_ad">MAIN ADVERTISEMENT</div>
		<div id="main_home_login" align="left">


			<form action="login.do" method="post">
				<table align="center" bgcolor="#EDF7F2"
					style="margin-top: 65px; text-align: center;">
					<c:if test="${empty sessionScope.member_id}">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="member_id" /></td>
							<td rowspan="2"><input type="image" value="submit"
								src="image/button/but_l_login.png" id="img_login_but" /></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="member_passwd" /></td>
						</tr>
					</c:if>
					<c:if test="${not empty sessionScope.member_id}">
					${sessionScope.member_id} 님 로그인 되었습니다.
					</c:if>
				</table>
				</center>
			</form>

		</div>
		<hr />
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
