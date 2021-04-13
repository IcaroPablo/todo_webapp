<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TO-DOS</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">

</head>
<body>
	
	<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a href="http://www.in28minutes.com" class="navbar-brand">in28Minutes</a>
		</div>
		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/login">Home</a></li>
				<li><a href="/list-todos">Todos</a></li>
	
			</ul>
		</div>
	</nav>

	<div class="container">
		<table class="table table-striped">
			<caption>your to-dos are</caption>
			<thead>
				<tr>
					<th>description</th>
					<th>target date</th>
					<th>is completed?</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<!-- ${todo.id} ${todo.desc} ${todo.user} <BR/> -->
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}"/></td>
						<td>${todo.done}</td>
						<td>
							<a href="/update-todo?id=${todo.id}" class="btn btn-success">Update</a>
							<a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>		
			</tbody>
		</table>
		<div>
			<a class="btn btn-success" href="/add-todo">Add</a>
		</div>
			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
			<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
			<script>
				$('#targetDate').datepicker({
					format : 'dd/mm/yyyy'
				});
			</script>
	</div>
</body>
</html>