<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a class="btn btn-primary" href="${path}/save">Create</a>
				<a class="btn btn-danger" href="${path}/logout">Logout</a>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>First Name ${path}</th>
							<th>Last Name</th>
							<th>Age</th>
							<th>Organization</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.userFirstName}</td>
								<td>${user.userLastName}</td>
								<td>${user.age}</td>
								<td>${user.org}</td>
								<td>${user.email}</td>
								<td><a class="btn btn-info" href="${path}/edit?id=<c:out value='${user.userId}' />">Edit</a>
								    &nbsp; 
								    <a class="btn btn-danger" href="${path}/delete?id=<c:out value='${user.userId}' />">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>