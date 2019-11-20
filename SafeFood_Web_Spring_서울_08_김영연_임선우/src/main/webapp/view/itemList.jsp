<%@page import="com.vo.Food"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<!-- META TAG ================================================ -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap4.3.1 css ====================================== -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- MDB ==================================================== -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.1/css/mdb.min.css"
	rel="stylesheet">
<!-- Additional Stylesheet =============================== -->
<link rel="stylesheet" href="css/item_list.css">
<!-- Font Download (https://fonts.google.com/) ================ -->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&amp;subset=korean"
	rel="stylesheet">
<!-- Icon Pack Download (https://fontawesome.com/)========== -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">

</head>
<!-- /HEAD ==================================================== -->
<!-- ========================================================== -->
<!-- ========================================================== -->
<!-- BODY  ==================================================== -->
<body>
	<header>
		<!-- Navbar =============================================== -->
		<c:if test="${empty s_id}">
			<c:import url="/view/navbar_bf.jsp" charEncoding="utf-8"></c:import>
		</c:if>
		<c:if test="${not empty s_id}">
			<c:import url="/view/navbar_af.jsp" charEncoding="utf-8"></c:import>
		</c:if>
		<!-- /Navbar ================================================ -->
		<!--Carousel Wrapper ======================================== -->
		<div id="main_carousel" class="carousel">
			<div class="carousel-inner ">
				<div class="view"
					style="background-image: url('img/index_food6.jpg'); background-repeat: no-repeat; background-size: cover; background-position: bottom;">
					<!-- Mask & flexbox options-->
					<div
						class="mask rgba-black-light d-flex justify-content-center align-items-center">
						<div class="text-center white-text mx-5 wow fadeIn">
							<h1 class="mb-2">
								<strong>상품 리스트 </strong>
							</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Carousel Wrapper ==================================== -->

	</header>
	<!-- Main layout ============================================== -->
	<main>
	<div class="container wrapper">
		<!-- Search Bar =========================================== -->
		<form id="target" method="post" action="search.food">
			<div class="row p-2">
				<div class="col-12 col-md-4">
					<label for="key">정렬 방법</label> <select id="key1" name="key1"
						class="form-control">
						<option value="all" selected="selected">선택하세요</option>
						<option value="name">상품명</option>
						<option value="calory">칼로리</option>
					</select>
				</div>
				<div class="col-12 col-md-4">
					<label for="key">카테고리</label> <select id="key" name="key"
						class="form-control">
						<option value="all" selected="selected">선택하세요</option>
						<option value="name">상품명</option>
						<option value="maker">제조사</option>
						<option value="material">재료명</option>
					</select>
				</div>
				<div class="col-12 col-md-4">
					<label for="word">검색내용</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="검색어를 입력하세요"
							name="word" id="word" aria-describedby="basic-addon2">
						<button class="btn btn-sm px-2 btn-outline-success" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</form>
		<!-- /Search Bar ========================================= -->
		<div class="row item_data">
			<%
				ArrayList<Food> list = (ArrayList<Food>) request.getAttribute("list");
				boolean[] result = (boolean[]) request.getAttribute("result");

				for (int i = 0; i < list.size(); i++) {
			%>
			<div class="col-lg-3 col-md-4 mb-4">
				<div class="card h-100">
					<a href="itemInfo.food?code=<%=list.get(i).getCode()%>">
					<img class="card-img-top" src="<%=list.get(i).getImg()%>" alt=""></a>
					<div class="card-body">
						<h4 class="card-title"><%=list.get(i).getName()%></h4>
						<p class="card-text"><%=list.get(i).getMaterial()%></p>
					</div>
					<div class="card-footer">
						<small class="text-muted">칼로리: <%=list.get(i).getCalory() %></small><br>
						<%
							if (result != null && result[i]) {
						%>
						<small style="color: red;"> ${s_id} 님의 알레르기 성분이 포함됨.</small>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
	</main>
	<!-- /Main layout =========================================== -->

	<!-- footer =================================================== -->
	<footer class="page-footer text-center font-small mt-4 wow fadeIn">
		<div class="footer-copyright py-3">
			© 2019 Copyright: <strong>영연 & 선우</strong>
		</div>
	</footer>
	<!-- /footer ================================================== -->

	<!-- Modal ==================================================== -->
	<c:import url="/view/reg_modal.jsp" charEncoding="utf-8"></c:import>
	<!-- /Modal =================================================== -->

	<!-- ========================================================== -->
	<!-- JavaScript CDN LIST ====================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- jQuery 3.4.1 ============================================= -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper.js 1.14.3 ========================================= -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<!-- Bootstrap 4.1.3 ========================================== -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.0/js/mdb.min.js"></script>
	<!-- /JavaScript CDN LIST ===================================== -->
	<!-- ========================================================== -->
</body>
</html>