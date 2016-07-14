<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Home page</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="bootstrap.css">
	</head>
	<body>
		<div id="page">
			<div id="index">
				<ul>
			    	<li ><a href="index.jsp"><b>Home</b></a></li>
				</ul>
			</div>
		</div>
	
		<form class="form-horizontal">
	  		<div class="form-group">
	   			 <label for="inputUrl3" class="col-sm-2 control-label">DataBase</label>
	   		 <div class="col-sm-10">
	     		 <input type="text" class="form-control" id="inputUrl3" placeholder="DB name">
	    	</div>
	  		</div>
	  		
	  		<div class="form-group">
	    		<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
	    	<div class="col-sm-10">
	      		<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
	    	</div>
	  		</div>
	  		
			<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-danger">Create</button>
			</div>
			</div>
		</form>
	</body>
</html>