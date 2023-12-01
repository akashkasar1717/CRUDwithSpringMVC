<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

body {
	background-color: cadetblue;
}

.para {
	align-items: center;
	justify-content: center;
	text-align: center;
	padding: 10px;
	display: flex;
}

body p {
	padding: 150px;
}

h3 {
	color: voilet;
}

img {
	width: 100%;
	height: 500px;
	place-items: center;
	display: block;
	display: center;
	opacity: 0.8;
}

.first {
	color: black; position : absolute;
	top: 500px;
	left: 30px;
	position: absolute;
}



.center {
	text-align: center;
}
.card{
	padding:20px;
	color:white;
}

body .btn {
	text-decoration: none;
	border-radius: 0px;
	align-items: center;
	justify-content: center;
	padding: 10px;
	cursor: pointer;
}

body button {
	padding-left: 50%;
	justify-content: center;
	display: flex;
	margin-top: 15%;
	position: absolute;
	align-items: center;
	position: absolute;
}

footer {
	justify-content: center;
	background-color: black;
	padding: 10px;
	margin-top: 21%;
	text-align: center;
}
#headers{
	justify-content: center;
	background-color:white;
	align-items:center;
	padding:17px 0px;
	align-items:center;
	width:30%;
	height:5px;
	text-align: center;
	border:none;
	
}
#search{
	border:none;
	color:white;
	background-color:rgb(107, 75, 223);
	width:10%;
	padding:7px 0px;
	outline:none;
}

#frame {
	position: absolute;
	margin-bottom: 0%;
}

</style>

</head>

<nav class="navbar navbar-inverse"width: 100%">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="Welcome.jsp">Spring MVC</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="NewFile.jsp"><span
						class="glyphicon glyphicon-user"></span>Home</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				
				<li><a href="AdminLogin.jsp"><span
						class="glyphicon glyphicon-log-in"></span>CRUD</a></li>
			</ul>
		</div>
	</nav>

<body class="text-center mt-10">
<h2>Hello Spring...!</h2>

<div class="container mt-10">

<a href="empform" class="btn btn-success">Add User</a> 
<a href="viewemp" class="btn btn-primary">View User</a> 

</div>

</body>
<footer>

<br> &copy copyright Rush university medical center,Rush copley
	medical center or Rush Oak Park Hospital. All physicians featured on
	this website are on the medical faculty of Rush university medical
	center, Rush copley medical center or Rush Oak Park Hospital. All
	physicians featured on this website are on the medical faculty of Rush
	university medical center. <br> <br>

	<div style="color: white;">
		
		<a href="https://www.facebook.com"> <i class="fa fa-facebook"
			style="padding: 20px;"> </i></a>			
			
			<a href="https://www.twitter.com"> <i class="fa fa-twitter"
			style="padding: 20px;"></i> </a>
						
			<a href="https://www.instagram.com"><i class="fa fa-instagram"
			style="padding: 20px;"></i> </a>
					
			<a href="https://www.linkedin.com"><i class="fa fa-linkedin"
			style="padding: 20px;"></i></a>
					
	</div>

	<span style="color:white;" class="glyphicon glyphicon-facebook"> facebook  |</span>
	 <span style="color:white;" class="glyphicon glyphicon-twitter">tweeter |</span>  
	 
		<span style="color:white;" 
		class="glyphicon glyphicon-instagram">instagram |</span> 
		<span style="color:white;" 
		class="glyphicon glyphicon-linkedin">linkedin</span>
</footer>

</html>
