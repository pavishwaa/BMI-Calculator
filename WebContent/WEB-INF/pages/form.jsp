<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 style="color:red;">${msg.message}</h2>
<h2>BMI Calculator</h2>
<h3 style="color: red">Please fill all values</h3>
	<form method="post" action="">
	Height1: <input type="text" name="height1" /><br>
	Height2: <input type="text" name="height2" /><br>
	Weight: <input type="text" name="weight" /><br>
	choice: 
	<input type="radio" name="choice" value="imperial"> imperial<br>
	<input type="radio" name="choice" value="metric"> metric<br>
	<input type="submit" name="submit" value="Calculate" />    
	</form>
	<br><br><br>
<jsp:include page="/WEB-INF/snippets/completedby.jsp"/>
</body>
</html>