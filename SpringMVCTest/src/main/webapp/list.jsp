<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html><body>
<center>
		<h1>Spring MVC �Խ���</h1>
		<jsp:include page="loginCheck.jsp"/>	
		<form method="post" action="search.bod">
			<select name="search">
				<option value="name">�۾���</option>
				<option value="title">����</option>
			</select>
			<input type="text" name="searchtext"/>
			<input type="submit" value="�˻�"/>
		</form>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1><TR>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>��ȣ</th>
		<th width=200 bgcolor=#113366><font color=#ffffee size=2>����</th>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>�۾���</th>
		<th width=150 bgcolor=#113366><font color=#ffffee size=2>��¥</th>
		<th width=100 bgcolor=#113366><font color=#ffffee size=2>��ȸ��</th>

	  <c:forEach items="${list}" var="b">
	    <tr bgcolor=pink>
		   <td align=center bgcolor=pink>&nbsp;<font size=2>${b.num}</td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>
	      <a href="read.bod?num=${b.num}">${b.title}</a></td>

	      <td align=center bgcolor=pink>&nbsp;<font size=2>${b.name }</td>
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>${b.wdate}</td>
	       
	       
	      <td align=center bgcolor=pink>&nbsp;<font size=2>${b.count}</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<a href=insert.bod>���۾���</a>
</body></html>