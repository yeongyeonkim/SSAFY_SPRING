<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<HTML><HEAD><TITLE></TITLE></HEAD>
<BODY>		
<center>
<form method=post action= 'insert.bod' >
<table>
<tr>
	<td><h1>new record....</h1>
	</td>
</tr>
<tr>
	<td>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
	<input type=input name='title' size=42></td>
</tr>
<tr>
	<td>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
	<input type=input name='name' size=42></td>
</tr>
<tr>
	<td>��й�ȣ <input type=password name='pass' size=42></td>
</tr>
<tr>
	<td colspan=2><textarea rows = 10 cols=50 name='content' ></textarea></td>
</tr>
<tr>
	<td><center>
		<input type=submit value=����>
		<input type=reset value=���></center>
	</td>
</tr>
</table>
</form>
<p>
	</center>

</BODY></HTML>











