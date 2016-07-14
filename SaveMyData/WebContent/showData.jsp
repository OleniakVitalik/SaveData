<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>showData</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="bootstrap.css">
	</head>
	<body>
		<div id="page">
			<div id="index">
				<ul>
					<li><a href="HomePages"><b>Home</b></a></li>
					<li><a href="Creates"><b>InputData</b></a></li>
					<li><a href="Lists"><b>ShowData</b></a></li>
				</ul>
			</div>
	
			<table class="table">
				<thead>
					<tr>
						<th>URL</th>
						<th>Login</th>
						<th>Password</th>
						<th>Used</th>
					</tr>
				</thead>
				<tbody >
					<tr>
						<td>${url}</td>
						<td>${login}</td>
						<td>${password}</td>
						<td>${used}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>