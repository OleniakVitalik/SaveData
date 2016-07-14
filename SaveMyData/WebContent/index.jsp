<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Home page</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="bootstrap.css">
		<script type="text/javascript"
			src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
		<script> 
			$(document).ready(function() {
			// Create two variable with the names of the months and days in an array
			var monthNames = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]; 
			var dayNames= ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
		
			// Create a newDate() object
			var newDate = new Date();
			// Extract the current date from Date object
			newDate.setDate(newDate.getDate());
			// Output the day, date, month and year    
			$('#Date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());
		
			setInterval( function() {
			  // Create a newDate() object and extract the seconds of the current time on the visitor's
			  var seconds = new Date().getSeconds();
			  // Add a leading zero to seconds value
			  $("#sec").html(( seconds < 10 ? "0" : "" ) + seconds);
			  },1000);
			  
			setInterval( function() {
			  // Create a newDate() object and extract the minutes of the current time on the visitor's
			  var minutes = new Date().getMinutes();
			  // Add a leading zero to the minutes value
			  $("#min").html(( minutes < 10 ? "0" : "" ) + minutes);
			    },1000);
			  
			setInterval( function() {
			  // Create a newDate() object and extract the hours of the current time on the visitor's
			  var hours = new Date().getHours();
			  // Add a leading zero to the hours value
			  $("#hours").html(( hours < 10 ? "0" : "" ) + hours);
			    }, 1000);
			  
			});
		</script>
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

		<div class="container">
			<div class="clock">
				<div id="Date"></div>
					<ul>
						<li id="hours"></li>
						<li id="point">:</li>
						<li id="min"></li>
						<li id="point">:</li>
						<li id="sec"></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>