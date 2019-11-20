<%@page import="com.vo.Food"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Queue"%>
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
<link rel="stylesheet" href="css/index.css">
<!-- Font Download (https://fonts.google.com/) ================ -->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&amp;subset=korean"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oxygen&display=swap"
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
		<div id="main_carousel" class="carousel slide carousel-fade"
			data-ride="carousel">

			<!--Indicators ========================================== -->
			<ol class="carousel-indicators">
				<li data-target="#main_carousel" data-slide-to="0" class="active"></li>
				<li data-target="#main_carousel" data-slide-to="1"></li>
			</ol>
			<!--/.Indicators ======================================== -->

			<!--Slides-->
			<div class="carousel-inner" role="listbox">

				<!--First slide-->
				<div class="carousel-item active">
					<div class="view"
						style="background-image: url('img/index_food7.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">

						<!-- Mask & flexbox options-->
						<div
							class="mask rgba-black-light d-flex justify-content-center align-items-center">

							<!-- Content -->
							<div class="text-center white-text mx-5 wow fadeIn">
								<h1 class="mb-4">
									<strong>SSAFY SAFE FOOD </strong>
								</h1>

								<a href="itemList.food" class="btn btn-outline-white btn-lg">자세히
									알아보기 <i class="fas fa-angle-double-right"></i>
								</a>
							</div>
							<!-- Content -->

						</div>
						<!-- Mask & flexbox options-->

					</div>
				</div>
				<!--/First slide-->

				<!--Second slide-->
				<div class="carousel-item">
					<div class="view"
						style="background-image: url('img/index_food8.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">

						<!-- Mask & flexbox options-->
						<div
							class="mask rgba-black-light d-flex justify-content-center align-items-center">

							<!-- Content -->
							<div class="text-center white-text mx-5 wow fadeIn">
								<h1 class="mb-4">
									<strong>건강한 삶을 위한 먹거리 프로젝트</strong>
								</h1>

								<p class="mb-4 d-none d-md-block">
									<strong>아는 만큼 안전할 수 있는 식품 안전소식!<br> 알아두면 쓸데있는 식품
										안전정보!
									</strong>
								</p>

								<a target="_blank" href="notice.html"
									class="btn btn-outline-white btn-lg">중요정보 </a>
							</div>
							<!-- Content -->

						</div>
						<!-- Mask & flexbox options-->

					</div>
				</div>
				<!--/Second slide-->
			</div>
			<!--/.Slides ============================================ -->

			<!--Controls ============================================ -->
			<a class="carousel-control-prev" href="#main_carousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#main_carousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
			<!--/.Controls ========================================== -->

		</div>
		<!-- /Carousel Wrapper ==================================== -->
	</header>

	<!--Main layout =============================================== -->
	<main>
	<div class="container">
		<!--Section: Main info-->
		<%
			String s_id = (String) request.getSession().getAttribute("s_id");
			System.out.println("Session ID:" + s_id);
			if (s_id != null) {
				System.out.println("테스트");
				Queue<Food> que = new LinkedList<>();
				if ((LinkedList<Food>) request.getSession().getAttribute("recent") != null) {
					que = (LinkedList<Food>) request.getSession().getAttribute("recent");
					System.out.println(que.size());
		%>
		<section class="mt-5 wow fadeIn">
			<h3>최근 본 상품</h3>
			<div class="row">
				<%
					if (!que.isEmpty()) {
								for (Food f : que) {
				%>
				<div class="col text-center">
					<a href="itemInfo.food?code=<%=f.getCode()%>">
					<img class="card-img-top" src="<%=f.getImg()%>" alt="" style="width:100px;"><br>
					</a>
					<h6><%=f.getName()%></h6>
				</div>
				<%
					}
							}
				%>
			</div>
		</section>
		<%
			}
			}
		%>
		<section class="mt-5 wow fadeIn">
			<!--Grid row-->
			<div class="row">
				<!--Grid column-->
				<div class="col-md-6 mb-4">
					<img src="img/index_food3.jpg" class="img-fluid z-depth-1-half"
						alt="">
				</div>
				<!--Grid column-->
				<!--Grid column-->
				<div class="col-md-6 mb-4">
					<!-- Main heading -->
					<h4 class="h4 mb-3">식품안전 먹거리란 무엇인가</h4>
					<p>맛있어요 건강해요 안전해용</p>
					<p>안녕하세요 영연과 선우의 안전 식품 정보 사이트랍니다</p>
					<!-- Main heading -->
					<hr>
					<p>이러쿵 저러쿵 메인 페이지입니다 재잘재잘 어쩌구 저쩌구</p>
					<a href="#" class="btn btn-grey btn-md">더 알아보기 <i
						class="fas fa-download ml-1"></i>
					</a>
				</div>
				<!--Grid column-->
			</div>
			<!--Grid row-->
		</section>
		<!--Section: Main info-->
	</main>
	<!--/Main layout ============================================== -->
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