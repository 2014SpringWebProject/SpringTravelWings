<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/dream_wings.css">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div id="header_link">

			<c:if test="${empty sessionScope.member_id}">
				<!-- 로그인을 안했을 때 -->
				<a href="login_page.do"> <input type="image"
					src="image/link/link_login.png" id="but_top_loginout" /></a>
				<a href="join_page.do"><input type="image"
					src="image/link/link_signin.png" id="but_top_loginout" /></a>

			</c:if>

			<c:if test="${not empty sessionScope.member_id}">

				<c:if test="${sessionScope.member_id eq 'admin'}">
					<!-- 관리자일경우 버튼  -->
					<a href="logout_page.do"> <input type="image"
						src="image/link/link_logout.png" id="but_top_loginout" /></a>
					<a href="owner_product_page.do"><input type="image"
						src="image/link/link_manage.png" id="but_top_loginout" /></a>
					<a href="owner_order_page.do"><input type="image"
						src="image/link/link_search.png" id="but_top_loginout" /></a>
				</c:if>

				<c:if test="${sessionScope.member_id ne 'admin'}">
					<!-- 관리자가 아닐 경우 버튼 -->
					<a href="logout_page.do"><input type="image"
						src="image/link/link_logout.png" id="but_top_loginout" /></a>
					<a href="mypage_buylist_page.do"><input type="image"
						src="image/link/link_mypage.png" /></a>
				</c:if>
			</c:if>

		</div>
		<div id="header_logo">
			<a href="home_page.do"> <input type="image"
				src="image/logo/img_logo.png" id="img_logo" /></a>
		</div>
		<div id="header_category">
			<a href="list.do?category=family"> <input type="image"
				src="image/top_menu/top_menu_family.png" id="img_top_menu" /></a> <a
				href="list.do?category=bagpacking"> <input type="image"
				src="image/top_menu/top_menu_bagpacking.png" id="img_top_menu" /></a> <a
				href="list.do?category=honeymoon"> <input type="image"
				src="image/top_menu/top_menu_honeymoon.png" id="img_top_menu" /></a> <a
				href="list.do?category=schooltrip"> <input type="image"
				src="image/top_menu/top_menu_schooltrip.png" id="img_top_menu" /></a>
		</div>
	</div>
</body>
</html>