<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mypage buylist page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_sub">
		<jsp:include page="MypageSubmenu.jsp"></jsp:include>
	</div>

	<div id="main_mypage_buylist">
		<h1>TITLE</h1>
		<table id="main_mypage_buylist_list">
			<tr>
				<td><input type="checkbox" name="buylist_check"/></td>
				<td>IMAGE</td>
				<td>INFORMATION</td>
			</tr>
		</table>
		<h2>합계 : </h2>
		<input type="submit" value="buy" />
	</div>
</body>
</html>