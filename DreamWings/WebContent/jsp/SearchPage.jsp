<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_search_id">
		���̵� ã��<br/>
		�̸�<br/>
		<input type="text" name="search_name"/><br/>
		�̸��� �ּ�<br/>
		<input type="text" name="search_email_1"/>@<input type="text" name="search_email_2"/><br/>
		<input type="submit" value="ã��"/>
	</div>
	<div id="main_search_pwd">
		��й�ȣ ã��<br/>
		���̵�<br/>
		<input type="text" name="search_name"/><br/>
		�̸��� �ּ�<br/>
		<input type="text" name="search_email_1"/>@<input type="text" name="search_email_2"/><br/>
		<input type="submit" value="ã��"/>
	</div>
</body>
</html>