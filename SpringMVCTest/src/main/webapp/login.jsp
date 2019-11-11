<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
<center>
<h1>login</h1>
<form action="login.bod" method="post">
	id: <input type="text" name="id"><br>
	pass: <input type="text" name="pass"><br>
	<input type="submit" value="login">
	<input type="reset" value="cancel">
</form>
</center>
</body>
</html>