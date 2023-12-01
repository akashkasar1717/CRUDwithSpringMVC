<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>
<body style="background-color:aqua;">
	<h1 class="text-center mt-4">User List</h1>
	<div class="container">
	<div class="row">
	
	
<a href="empform" class="btn btn-success mt-2 mb-2">Add New User</a>
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="row"></th>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Pin Code</th>
					<th>Mobile Number</th>
					<th>Email Address </th>
					<th>Password  </th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${list}">
				<tr>
					<th scope="col"></th>
					<td>${emp.id}</td>
					<td>${emp.fname}</td>
					<td>${emp.lname}</td>
					<td>${emp.address}</td>
					<td>${emp.pincode}</td>
					<td>${emp.mobile}</td>
					<td>${emp.email}</td>
					<td>${emp.password}</td>
					<td><a href="editemp/${emp.id}" class="btn btn-primary">Update</a></td>
					<td><a href="deleteemp/${emp.id}" class="btn btn-danger" onclick="if(!(confirm('are you sure you want to delete this data ?'))) return false">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>	   
	<br>       
	  
</div>
</div>
</body>
</html>
