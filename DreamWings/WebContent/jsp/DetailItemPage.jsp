<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>Detail item page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
</head>
<body>
	<jsp:include page="PageHeader.jsp"></jsp:include>

	<div id="main_sub">
		<jsp:include page="DetailSubmenu.jsp"></jsp:include>
	</div>

	<div id="main_detail_item">
		<table id="main_detail_item_table">
			<tr>
				<td rowspan="2"><img src="image/product/${product.photo_detail}"></td>
				<td>${product.name}</td>
			</tr>
			<tr>
				<td>가격 : ${product.price}원<br>
				원산지 : ${product.origin}<br>
				제조사 : ${product.brand}<br>
				재고 : ${product.count}개</td>
			</tr>
		</table>
		<div id="main_detail_item_info">
			DETAIL INFORMATION
		</div>
		<hr/>
		<h1>상품평</h1>
		<table id="main_detail_item_review">
			<tr>
				<td>
					<h3>TITLE</h3><br/>
					TEXT...
				</td>
			</tr>
		</table>
	</div>
</body>
</html>