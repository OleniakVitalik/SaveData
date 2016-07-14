<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>InputData</title>
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
		</div>
		
		<form action="Creates" class="form-horizontal" method="post">
			
			<div class="form-group">
				<label for="inputUrl3" class="col-sm-2 control-label">Url</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputUrl3"
						placeholder="Url" name="url">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputLogin3" class="col-sm-2 control-label">Login</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputLogl3"
						placeholder="Login" name="login">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="Password" name="password">
					</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<select class="form-control" name="used">
						<option>One a Day</option>
						<option>One a Mounth</option>
						<option>One a year</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-danger">Save</button>
				</div>
			</div>
			
		</form>
	</body>
</html>