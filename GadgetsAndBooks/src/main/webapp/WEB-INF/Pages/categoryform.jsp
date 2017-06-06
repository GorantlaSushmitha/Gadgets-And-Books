<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url(http://www.designbolts.com/wp-content/uploads/2013/02/Rough-Grey-Tilable-Pattern-For-Website-Background.jpg);
        
    }
.vertical-offset-100{
    padding-top:10px;
}
</style>
<html>
<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		
		<div class="container wrapper">
			<div class="container">
				<url:url var="addAction" value="/admin/category/savecategory"></url:url>
				<form:form action="${addAction }" modelAttribute="category" method="post">
					<div class="container" align="justify">
						<div class="row vertical-offset-100">
							<div class="col-md-6 col-md-offset-3">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" align="center"><i><b>Category Form</b></i></h3>
									</div>
									<div class="form-group" align="center">
										<label class="col-md-4 control-label" for="cId"></label>
										<form:hidden path="cId"></form:hidden>
								   </div>
									<div class="form-group" align="center">
										<label class="col-md-4 control-label"for="categoryName">Enter Category name</label>
										<form:input path="categoryName"></form:input>
											<%-- <td><form:errors path="categoryName" cssStyle="color:#ff0000"></form:errors></td> --%>
									</div>
									<div><center><input type="submit" value="Add Category"></center></div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<br>
					<div class="container" align="justify">
						<div class="row vertical-offset-100">
							<div class="col-md-6 col-md-offset-3">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" align="center"><i><b>Categories</b></i></h3>
									</div>
									<c:forEach items="${categoryList}" var="c" >
									<div class="form-group" align="center">
										<b><i>Category Id</i></b> ${c.cId}
									</div>
									<div class="form-group" align="center">
										<b><i>Category Name</i></b> ${c.categoryName }
									</div>
									<div class="form-group" align="center">
										<b><i>Action</i></b>
										<url:url value="/all/category/viewcategory/${c.cId }" var="url"></url:url>
											<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
											<url:url value="/admin/category/deletecategory/${c.cId }" var="url1"></url:url>
											<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
											<url:url value="/admin/category/editcategory/${c.cId}" var="url2"></url:url>
											<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>	
									</div>
											
											
										<%-- 	<url:url value="/all/category/viewcategory/${c.cid}" var="url"></url:url>
											<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
											<url:url value="/admin/category/deletecategory/${c.cid}" var="url1"></url:url>
											<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
											<url:url value="/admin/category/editcategory/${c.cid}" var="url2"></url:url>
											<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a></td> --%>
									</c:forEach><br>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<br>
	</body>
</html>
	<%@ include file="footer.jsp" %>	