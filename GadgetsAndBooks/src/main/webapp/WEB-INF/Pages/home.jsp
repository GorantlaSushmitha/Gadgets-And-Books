<!DOCTYPE html>
<style>
.container{
	 background-color: #444;
     background: url(http://www.designbolts.com/wp-content/uploads/2013/02/Rough-Grey-Tilable-Pattern-For-Website-Background.jpg);
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

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<%@ include file='header.jsp' %>

	<title>Project</title>
  </head>
	<body> 
		<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
            	<!-- Indicators -->
            	<ol class="carousel-indicators">
                	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                	<li data-target="#myCarousel" data-slide-to="1"></li>
                	<li data-target="#myCarousel" data-slide-to="2"></li>
                   	<li data-target="#myCarousel" data-slide-to="3"></li>
                   	<li data-target="#myCarousel" data-slide-to="4"></li>
            	</ol>
            	<div class="carousel-inner" role="listbox" style="height: 300px;">
            		<div class="item active">
                    	<img class="first-slide home-image img-responsive center-block" src="resources/images/c1.jpg" alt="first slide" style="width: 100%;height: 300px">
      
                	</div>
                	<div class="item">
                    	<img class="second-slide home-image" src="resources/images/c2.jpg" alt="Second slide" style="width: 100%;height: 300px">
                	</div>
                	<div class="item" align="center" style="width: 100%;">
                    	<img class="third-slide home-image" src="resources/images/c3.png" alt="third slide" style="width: 100%;height: 300px">
                   	</div>
                	<div class="item">
                    	<img class="forth-slide home-image " src="resources/images/c4.jpg" alt="forth slide" style="width: 100%;height: 300px">
                	</div>
                 	<div class="item">
                    	<img class="fifth-slide home-image " src="resources/images/c5.jpg" alt="fifth slide" style="width: 100%;height: 300px">
               	 	</div>
            	</div>
            	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                	<span class="glyphicon glyphicon-chevron-left"></span>
                	<span class="sr-only">Previous</span>
            	</a>
            	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                	<span class="glyphicon glyphicon-chevron-right" ></span>
                	<span class="sr-only">Next</span>
            	</a>
        	</div>
        	
		</div>
		<br>
		<div class="container" style="width: 1350px;height: 800px;">
			<div align="center">
				<table>
					<tr align="center"><td><h3><b><i>BOOKS</i></b></h3></td></tr>
					<tr align="left">
						<td><img src="resources/images/37.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
						<td><img src="resources/images/1.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
						<td><img src="resources/images/3.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
					</tr>
					<tr align="center"><td><h3><b><i>GADGETS</i></b></h3></td></tr>
					<tr align="center">
						<td><img src="resources/images/38.png" class="img-thumbnail" alt="Cinque Terre" style="width: 300px;height: 300px"></td>
						<td><img src="resources/images/40.png" class="img-thumbnail" alt="Cinque Terre" style="width: 300px;height: 300px"></td>
						<td><img src="resources/images/41.png" class="img-thumbnail" alt="Cinque Terre" style="width: 300px;height: 300px"></td>
					</tr>
					<tr><td></td></tr>
				</table>
			</div>
		</div>
	</body>
</html>
<%@ include file="footer.jsp" %>