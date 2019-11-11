<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<center>
<c:if test="${empty id}">
	<jsp:include page="login.jsp"/>
</c:if>
<c:if test="${not empty id}">
	welcome, ${id} <a href="logout.bod">로그아웃</a>
</c:if>
</center>
</body>
</html>






