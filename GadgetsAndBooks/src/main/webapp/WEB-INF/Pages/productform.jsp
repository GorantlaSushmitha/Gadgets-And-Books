<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page isELIgnored="false" %>
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
				<url:url var="url" value="/admin/product/saveproduct"></url:url>
				<form:form action="${url }" commandName="product" method="post" enctype="multipart/form-data">
					<div class="container" align="justify">
			    		<div class="row vertical-offset-100">
					    	<div class="col-md-6 col-md-offset-3">
					    		<div class="panel panel-default">
								  	<div class="panel-heading">
								    	<h3 class="panel-title" align="center"><i><b>Product Form</b></i></h3>
								 	</div>
									<fieldset>
										<div class="form-group"  align="center">
											<label for="id"></label>
											<form:hidden path="id" ></form:hidden>
										</div>
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="name">Enter Product name</label>
											<form:input path="name"></form:input>
											<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
										</div>
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="manufacturer">Product Manufacturer</label>
											<form:input  path="manufacturer"></form:input>
											<form:errors path="manufacturer" cssStyle="color:#ff0000"></form:errors>
										</div>
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="price">Product Price</label>
											<form:input  path="price"></form:input>
											<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
										</div>
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="unitInStock">Unit In Stock</label>
											<form:input  path="unitInStock"></form:input>
											<form:errors path="unitInStock" cssStyle="color:#ff0000"></form:errors>
										</div>
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="description">Description</label>
											<form:input  path="description"></form:input>
											<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
										</div>
										<div class="form-group"  align="center">					
										    <label class="col-md-4 control-label" for="Category">Category</label>
												<form:select  path="category.cId"	required="true">
														<c:forEach items="${categoryList}" var="category">
														<form:option path="category.cid" value="${category.cId}"> ${category.categoryName}</form:option>
													</c:forEach>
												</form:select>
											
												<%-- <select>
												    <c:forEach items="${categoryList}" var="category">
												        <option  path="category.cid" value="${category.cId}"/>${category.categoryName}
												    </c:forEach>
												</select> --%>
										</div>		
										<%-- 	<tr>
									<div class ="form-group">
									 <td><label for="Category">Category</label></td>
									<td><select>
								     <c:forEach items="${categoryList}" var="category">
									<option  path="category.cid" value="${category.cId}"/>${category.categoryName}
									 </c:forEach>
									</select>
									</td>
												
									</div> --%>					
										<div class="form-group"  align="center">
											<label class="col-md-4 control-label" for="image">Upload Image</label>
											<input type="file" name="fileUpload" >
										</div>
										<div  align="center"><input type="submit" value="Add Product"></div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>				
				</form:form>
			</div>
		</div>
	</body>
<br>
<br>
<br>
<br>
<br>
</html>
<%@ include file="footer.jsp" %>