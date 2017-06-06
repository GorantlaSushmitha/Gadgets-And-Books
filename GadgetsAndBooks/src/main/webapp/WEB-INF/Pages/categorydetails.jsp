<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
 body {
        background-color: #444;
        background: url(http://www.designbolts.com/wp-content/uploads/2013/02/Rough-Grey-Tilable-Pattern-For-Website-Background.jpg);
        
    }
.vertical-offset-100{
    padding-top:10px;
}
</style>
<%@ include file="header.jsp" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container" align="justify">
			<div class="row vertical-offset-100">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title" align="center"><i><b>Category Details</b></i></h3>
						</div>
						<fieldset>
							<div class="form-group"  align="center">
								Category ID:   	 ${category.cId }					<br>
							</div>
							<div class="form-group"  align="center">
								Category NAME:   ${category.categoryName }         	<br>
							</div>
							<div class="form-group"  align="center">
								<url:url value="/admin/category/categoryform" var="url"></url:url>
								<a href="${url }">Browse All Categories</a>
							</div>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</body>
	<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</html>
<%@ include file="footer.jsp" %>