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
<link rel="stylesheet" href="css/item_info.css">
<script src="js/Chart.min.js"></script>
<script src="js/utils.js"></script>
<!-- Font Download (https://fonts.google.com/) ================ -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&amp;subset=korean" rel="stylesheet">
<!-- Icon Pack Download (https://fontawesome.com/)========== -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<style type="text/css">
</style>
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
	</header>
	<!-- Main layout ============================================== -->

	<div class="container wrapper">
		<div class="row my-5">
			<!-- Left ===================================================== -->
			<div class="col-md-4 img-div">
				<img id="image" src="${food.img}">
			</div>
			<!-- /Left ==================================================== -->
			<!-- Right ==================================================== -->
			<div class="col-md-8">
				<h1 class="font-weight-light" id="name">${food.name}</h1>
				<table class="table">
					<tr>
						<th width="20">제조사</th>
						<td id="maker">${food.maker}</td>

					</tr>
					<tr>
						<th>알레르기 성분</th>
						<td>${al}</td>
					</tr>
					<tr>
						<th>원재료</th>
						<td id="material">${food.material}</td>
					</tr>
				</table>
				<div class="row">
					<a class="btn btn-sm rgba-green-strong" href="#">추가</a> <a class="btn btn-sm rgba-green-strong" href="#">찜</a>
				</div>
			</div>
			<!-- Right ==================================================== -->
		</div>
		<!-- Chart ==================================================== -->
		<div class="row">
			<div class="col-md-6 chart">
				<canvas id="chart-area"></canvas>
			</div>
			<div class="col-md-6">
				<table class="table">
					<tr>
						<th width="20">칼로리</th>
						<td id="nutri1">${food.calory}</td>
					</tr>
					<tr>
						<th width="20">탄수화물</th>
						<td id="nutri2">${food.carbo}</td>
					</tr>
					<tr>
						<th width="20">단백질</th>
						<td id="nutri3">${food.protein}</td>
					</tr>
					<tr>
						<th width="20">지방</th>
						<td id="nutri4">${food.fat}</td>
					</tr>
					<tr>
						<th width="20">당류</th>
						<td id="nutri5">${food.sugar}</td>
					</tr>
					<tr>
						<th width="20">나트륨</th>
						<td id="nutri6">${food.natrium}</td>
					</tr>
					<tr>
						<th width="20">콜레스테롤</th>
						<td id="nutri7">${food.chole}</td>
					</tr>
					<tr>
						<th width="20">포화지방산</th>
						<td id="nutri8">${food.fattyacid}</td>
					</tr>
					<tr>
						<th width="20">트랜스지방</th>
						<td id="nutri9">${food.transfat}</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- /Chart =================================================== -->
	</div>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper.js 1.14.3 ========================================= -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<!-- Bootstrap 4.1.3 ========================================== -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.0/js/mdb.min.js"></script>
	<!-- /JavaScript CDN LIST ===================================== -->
	<script type="text/javascript">
		
		var utils = Samples.utils;
		utils.srand(110);

		function alternatePointStyles(ctx) {
			var index = ctx.dataIndex;
			return index % 2 === 0 ? 'circle' : 'rect';
		}

		function makeHalfAsOpaque(ctx) {
			var c = ctx.dataset.backgroundColor;
			return utils.transparentize(c);
		}

		function adjustRadiusBasedOnData(ctx) {
			var v = ctx.dataset.data[ctx.dataIndex];
			return v < 10 ? 5 : v < 25 ? 7 : v < 50 ? 9 : v < 75 ? 11 : 15;
		}
		
		var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
		};

		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data: [${food.calory},${food.carbo}, ${food.protein}, ${food.fat},
						${food.sugar}, ${food.natrium}, ${food.chole}, ${food.fattyacid}, ${food.transfat}],
					backgroundColor: [
						window.chartColors.red, window.chartColors.orange,
						window.chartColors.yellow, window.chartColors.green,
						window.chartColors.blue, window.chartColors.grey,
						window.chartColors.purple, window.chartColors.lblue, window.chartColors.darkred ],
					label: 'Dataset 1'
				}],
				labels: ['칼로리', '탄수화물', '단백질', '지방', '당류', '나트륨', '콜레스테롤',
					'포화지방산', '트랜스지방']},
			options: {
				responsive: true
			}
		};
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		
	</script>
	<!--========================================================== -->
</body>
</html>
