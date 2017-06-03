<!DOCTYPE html>
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
            	<div class="carousel-inner" role="listbox" style="height: 250px;">
            		<div class="item active">
                    	<img class="first-slide home-image" src="resources/images/c1.png" alt="first slide" >
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>ONLINE BOOKS And GADGETS STORE</h1>
                            	<p>We Have Different Types Of Books And Gadgets.</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="second-slide home-image" src="resources/images/c2.png" alt="Second slide" >
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>WELCOME TO THE BOOKS And GADGETS STORE</h1>
                            	<p>Here You Can Browse And Buy Books And Gadgets.</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="third-slide home-image" src="resources/images/c3.png" alt="third slide">
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1>THE BOOKS STORE.</h1>
                            	<p>online shopping can make your life more easier to read different types of books.</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img class="forth-slide home-image " src="resources/images/c4.png" alt="forth slide">
                    	<div class="container">
                        	<div class="carousel-caption">
                        	    <h1>GADGETS AND BOOKS</h1>
                        	    <p>They are highly motivating to rediscover the pleasure of reading.</p>
                        	</div>
                    	</div>
                	</div>
                 	<div class="item">
                    	<img class="fifth-slide home-image " src="resources/images/c5.png" alt="fifth slide">
                    	<div class="container">
                    	    <div class="carousel-caption">
                    	        <h1>THE GADGETS</h1>
                    	        <p>The Gadgets Which We Use In Our Daily Life.</p>
                    	    </div>
                 	   </div>
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
		<div>
		<table>
		
		
		<tr align="center">
			<h3><font style="color: green;"><span style="padding-left:50px;">BOOKS</span></font></h3>
			<h5><font style="color: orange;"><span style="padding-left:40px;">Here we have different types of books where people can get different types of books:</span></font></h5>
			<h5><p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Story Books</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Subjective Books</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Novels</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Comic Books</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Sports Books</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Cooking Books</span></font></h5>
		</tr>
		<tr align="center">
			<h3><font style="color: green;"><span style="padding-left:50px;">GADGETS</span></font></h3>
			<h5><font style="color: orange;"><span style="padding-left:40px;">Here we have different types of gadgets where people can get different types of electronic devices and playing devices:</span></font></h5>
			<h5><p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Laptops</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Mobiles</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Desktops</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>IPads</span></font></p>
				<p><font style="color: blue;"><span style="padding-left:68px;"><font style="color: red;">*</font>Other Game Devices</span></font></p></h5>
		</tr>
		
		</table>
		</div>
		
	</body>
			<br><%@ include file="footer.jsp" %>
</html>