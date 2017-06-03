<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center">
<tr>
<th>ENTER USERNAME AND PASSWORD</th> <br>
</tr>
<tr>
${error }
${logout }
${registrationSuccess }
</tr>
<form action="<c:url value="j_spring_security_check"></c:url>" method="post" >
<tr>
<td>Enter username <input type="text" name="j_username"><br></td>
</tr>
<tr>
<td>Enter password <input type="password" name="j_password"><br></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</form>
</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
<%@ include file="footer.jsp" %>
</html>