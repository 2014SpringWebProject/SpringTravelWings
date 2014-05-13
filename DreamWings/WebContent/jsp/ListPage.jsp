<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>List page</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="dream_tour.css">
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
				<c:set var="doneLoop" value="false" />
				<c:forEach begin="1" end="30" varStatus="status" items="${requestScope.list}" var="p">
					<c:if test="${not doneLoop}"> 
						<td><a href="detail.do?no=${p.no}"><img src="image/product/${p.photo_preview}"></a></td>
						<c:if test="${status.count == 3}">
							<c:set var="doneLoop" value="true" />
						</c:if>
					</c:if>
				</c:forEach>
				
			</tr>
		</table>
		<hr>
		<table id="main_list_item">
			<tr>
				<c:forEach items="${requestScope.list}" var="p">
					<td><a href="detail.do?no=${p.no}"> <img
							src="image/product/${p.photo_preview}"></a></td>
				</c:forEach>
			</tr>
		</table>
	</div>
</body>
</html>