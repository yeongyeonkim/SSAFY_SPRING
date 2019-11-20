<%@page import="com.vo.Board"%>
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
								<strong>공지 사항</strong>
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
		<form id="target" method="post" action="search.bod">
			<div class="row p-2">
				<div class="col-12 col-md-4"></div>
				<div class="col-12 col-md-4"></div>
				<div class="col-12 col-md-4">
					<div class="input-group">
					<div class="col-1 col-md-4">
						<select name="search" id="search" class="form-control" style="width:100px;">
							<option value="name">글쓴이</option>
							<option value="title">제목</option>
						</select>
						</div>
						<input type="text" class="form-control" placeholder="검색어를 입력하세요"
							name="searchtext" id="searchtext" aria-describedby="basic-addon2">
						<button class="btn btn-sm px-2 btn-outline-success" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</form>
		<!-- /Search Bar ========================================= -->
		<div class="row item_data">
			<div class="col-lg-12">
				<div class="card h-100">
					<center>
							<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1><TR>
					<th width=100 bgcolor=#113366><font color=#ffffee size=2>번호</th>
				<th width=200 bgcolor=#113366><font color=#ffffee size=2>제목</th>
				<th width=100 bgcolor=#113366><font color=#ffffee size=2>글쓴이</th>
				<th width=150 bgcolor=#113366><font color=#ffffee size=2>날짜</th>
				<th width=100 bgcolor=#113366><font color=#ffffee size=2>조회수</th>
		</tr>
		  	<c:forEach items="${list}" var="b">
		    	<tr>
		   		<td align=center>&nbsp;<font size=2>${b.num}</td>
			       
	      		<td align=center>&nbsp;<font size=2>
	      		<a href="read.bod?num=${b.num}">${b.title}</a></td>
			
	      		<td align=center><font size=2>${b.name }</td>
			       
	      		<td align=center><font size=2>${b.wdate}</td>
			       
	       		
	      		<td align=center>&nbsp;<font size=2>${b.count}</td>
	       
		    </tr>
	    </c:forEach>
	    </TABLE>
	    <br></br>
		<a href=insert.bod>새글쓰기</a>
					</center>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!-- /Main layout =========================================== -->

	<!-- footer =================================================== -->
	<footer class="page-footer text-center font-small mt-4 wow fadeIn">
		<div class="footer-copyright py-3">
			© 2019 Copyright: 
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