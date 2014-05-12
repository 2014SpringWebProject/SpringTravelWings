<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Buy page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>

	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_sub">
		S<br/>U<br/>B<br/>M<br/>E<br/>N<br/>U
	</div>

	<div id="main_buy">
		<h1>구매 목록</h1>
		<table id="main_buy_list">
			<tr>
				<td>IMAGE</td>
				<td>INFORMATION</td>
			</tr>
		</table>
		<h2>합계 : </h2>
		<input type="submit" value="구매완료" />
	</div>
</body>
</html>