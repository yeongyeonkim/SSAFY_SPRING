<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navbar =============================================== -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
	<div class="container">

		<!-- Brand -->
		<a class="navbar-brand" href="index.food"> <strong>Ssafy 안전 먹거리</strong>
		</a>

		<!-- Collapse -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Links -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<!-- Left -->
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="itemList.food">식품 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="notice.bod">공지사항</a></li>

				<li class="nav-item"><a class="nav-link" href="#">내 섭취 정보</a></li>

				<li class="nav-item"><a class="nav-link" href="#">예상 섭취 정보</a></li>

			</ul>

			<!-- Right -->
			<ul class="navbar-nav nav-flex-icons">
				<li class="nav-item"><b class="text-white">${s_id} 님 안녕하세요.&nbsp;</b> </li>
			</ul>
			<ul class="navbar-nav nav-flex-icons">
				<li class="nav-item"><a href="detail.mem?id=${s_id}" class="m-1 nav-link border border-light rounded"> 내정보 </a></li>
			</ul>
			<ul class="navbar-nav nav-flex-icons">
				<li class="nav-item"><a href="logout.mem" class="m-1 nav-link border border-light rounded"> 로그아웃 </a></li>
			</ul>

		</div>

	</div>
</nav>
<!-- /Navbar ================================================ -->