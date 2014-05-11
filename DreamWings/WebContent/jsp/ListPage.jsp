<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>List page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>

<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_sub">
		<jsp:include page="DetailSubmenu.jsp"></jsp:include>
	</div>

	<div id="main_list">
		<h1>BEST</h1>
		<table id="main_list_best">
			<tr>
				<td>IMAGE</td>
				<td>IMAGE</td>
				<td>IMAGE</td>
			</tr>
		</table>
		<hr>
		<table id="main_list_item">
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