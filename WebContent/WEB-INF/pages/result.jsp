<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="myt" tagdir="/WEB-INF/tags/"%> 

<h1>Using JSP Bean</h1>
    <jsp:useBean id="bmi" class="mypack.Bmi" scope="session" /> 
    
    <ul>
    	<li>Height 1: <jsp:getProperty property="height1" name="bmi" />
    	<li>Height 2: <jsp:getProperty property="height2" name="bmi" />
    	<li>Weight: <jsp:getProperty property="weight" name="bmi" />
    	<li>Choice: <jsp:getProperty property="choice" name="bmi" />
    	<li>BMI: <jsp:getProperty property="bmi" name="bmi" />
    </ul>


<h3>JSP 2.0</h3>
<ul>
	<li>Height 1: ${bmi.height1}
    <li>Height 2: ${bmi.height2}
    <li>Weight: ${bmi.weight}
    <li>choice: ${ bmi.choice}
    <li>BMI: ${bmi.bmi}
</ul>

<h3>JSTL</h3>
<li>Height 1: ${bmi.height1}
    <li>Height 2: ${bmi.height2}
    <li>Weight: ${bmi.weight}
    <li>choice: ${ bmi.choice}
<li>BMI: 
	<c:choose>
	<c:when test="${bmi.bmi>25}">
    	<span style="color: red;"> ${bmi.bmi}</span>
    </c:when>
    <c:otherwise>
    	<span style="color: green;"> ${bmi.bmi}</span>
    </c:otherwise>
	</c:choose>
</li>	

<h3> Custom jsp tag </h3>
<myt:Tag2 color="orange">
	<li>Height 1: ${bmi.height1}
    <li>Height 2: ${bmi.height2}
    <li>Weight: ${bmi.weight}
    <li>choice: ${ bmi.choice}
    <li>BMI: ${bmi.bmi}
</myt:Tag2>

<br><br><br>
<jsp:include page="/WEB-INF/snippets/completedby.jsp"/>