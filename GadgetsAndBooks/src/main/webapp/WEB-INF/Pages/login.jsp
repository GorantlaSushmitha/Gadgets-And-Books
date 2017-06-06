<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url(http://www.designbolts.com/wp-content/uploads/2013/02/Rough-Grey-Tilable-Pattern-For-Website-Background.jpg);
        
    }
.vertical-offset-100{
    padding-top:100px;
}
</style>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
	</head>
	<body>
		<div class="container" align="justify">
		    <div class="row vertical-offset-100">
		    	<div class="col-md-4 col-md-offset-4">
		    		<div class="panel panel-default">
					  	<div class="panel-heading">
					    	<h3 class="panel-title" align="center"><i>Please sign in</i></h3>
					 	</div>
						<div>
							${error }
							${logout }
							${registrationSuccess }
						</div>
						<form action="<c:url value="j_spring_security_check"></c:url>" method="post" >
							<div class="panel-body">
								<form:form accept-charset="UTF-8" role="form">
									<fieldset>
										<div class="form-group">
											<center>Enter username <input type="text" name="j_username"></center>
										</div>
										<div class="form-group">
											<center>Enter password <input type="password" name="j_password"></center>
										</div>
										<div class="form-group">
											<div align="center" class="checkbox">
												<label><center><input name="remember" type="checkbox" value="Remember Me"> Remember Me</center></label>
											</div>
										</div>
										<div class="form-group">
											<center><input type="submit" value="submit"></center>
										</div>
									</fieldset>
								</form:form>
							</div>
						</form>
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
</html>
<%@ include file="footer.jsp" %>