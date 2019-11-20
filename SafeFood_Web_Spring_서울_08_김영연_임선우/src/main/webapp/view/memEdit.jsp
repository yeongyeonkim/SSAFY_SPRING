<%@page import="com.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<!-- META TAG ================================================ -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap4.3.1 css ====================================== -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- MDB ==================================================== -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.1/css/mdb.min.css" rel="stylesheet">
<!-- Additional Stylesheet =============================== -->
<link rel="stylesheet" href="css/Info.css">
<!-- Font Download (https://fonts.google.com/) ================ -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&amp;subset=korean" rel="stylesheet">
<!-- Icon Pack Download (https://fontawesome.com/)========== -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
				<div class="view" style="background-image: url('img/index_food6.jpg'); background-repeat: no-repeat; background-size: cover; background-position: bottom;">
					<!-- Mask & flexbox options-->
					<div class="mask rgba-black-light d-flex justify-content-center align-items-center">
						<div class="text-center white-text mx-5 wow fadeIn">
							<h1 class="mb-2">
								<strong>회원정보</strong>
							</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Carousel Wrapper ==================================== -->
	</header>

	<!--Main layout =============================================== -->
	<main>
	<div class="container wrapper mx-auto">
		<div class="col-md-6 mx-auto">
			<form class="needs-validation" method="post" action="update.mem">

				<br>
				<div class="mt-2">
					<span>아이디:&nbsp;</span> ${mem.id}
					<input type="text" value="${mem.id}" id="id" name="id" hidden>
				</div>
				<br>
				<div class="mb-2">
					<label for="name">이름</label>
					<input type="text" value="${mem.name}" class="form-control" name = "name" id="name">
					<div class="invalid-feedback">이름을 입력해주세요</div>
				</div>
				
				<div class="mb-2">
					<label for="addr">주소</label>
					<input type="text" value="${mem.address}" class="form-control" name="address" id="addr">
					<div class="invalid-feedback">주소를 입력해주세요</div>
				</div>
				​ ​
				<div class="mb-2">
					<label for="phone">전화번호</label>
					<input type="number" class="form-control" id="phone" name="phone" value="${mem.phone}" required>
					<div class="invalid-feedback">전화번호는 필수입니다.</div>
				</div>


				<hr class="mb-2">
				<div class="col-md-10 order-md-2">
					<label for="username">알레르기 성분</label>
				</div>
				​
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="allergy" value="대두"> 대두&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="allergy" value="땅콩"> 땅콩&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="allergy" value="우유"> 우유&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="allergy" value="게"> 게&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="복숭아"> 복숭아&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="민들레"> 민들레&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="계란흰자"> 계란흰자&nbsp;&nbsp;&nbsp;
					<br>
					<input type="checkbox" name="allergy" value="새우"> 새우&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="allergy" value="참치"> 참치&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="연어"> 연어&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="쑥"> 쑥&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="소고기"> 소고기&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="닭고기"> 닭고기&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" name="allergy" value="돼지고기"> 돼지고기&nbsp;&nbsp;&nbsp;
					<hr class="mb-4">
				</div>
				<div class="row justify-content-center">
						<button class="btn btn-lg  rgba-green-strong" type="submit">회원정보 수정</button>
						<button class="btn btn-lg  rgba-green-strong" type="button" onclick="del()">회원탈퇴</button>
				</div>
			</form>
		</div>
	</div>
	</main>
	<!--/Main layout ============================================== -->
	<!-- footer =================================================== -->
	<footer class="page-footer text-center font-small mt-4 wow fadeIn">
		<div class="footer-copyright py-3">
			© 2019 Copyright: <strong>영연 & 선우</strong>
		</div>
	</footer>
	<!-- /footer ================================================== -->
	<!-- ========================================================== -->
	<!-- JavaScript CDN LIST ====================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- jQuery 3.4.1 ============================================= -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper.js 1.14.3 ========================================= -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<!-- Bootstrap 4.1.3 ========================================== -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.0/js/mdb.min.js"></script>
	<!-- /JavaScript CDN LIST ===================================== -->
	<script type="text/javascript">
	function del() {
		var con = confirm("정말로 탈퇴하시겠습니까?");
		var id = $('#id').val();
		if(con == true) {
			location.href = 'delete.mem?id=' + id;
		}
		
	}
	</script>
	<!-- ========================================================== -->
</body>
</html>