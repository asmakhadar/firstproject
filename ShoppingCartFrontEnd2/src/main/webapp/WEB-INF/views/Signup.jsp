<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<style>
body{
background-image: url(resources/images/abc.jpg);

}


</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >watches</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="onLoad"><span class="glyphicon glyphicon-home"></span></a></li>
     </ul>
      
      
  </div>
</nav>

<h1>Welcome<div class="container">
<div class="col-md-4">
   To Sign Up Page</h1>

<form:form action="user/register" method="post" commandName="user">
	<table>
		<tr>
		<td><form:label path="first_name"><spring:message text="first_name"/></form:label></td>
		<td><form:input type="text" path="first_name" pattern=".{4,10}" required="true" title="please enter 4 to 10 characters"/></td>
		</tr>
		
		<tr>
		<td><form:label path="last_name"><spring:message text="last_name"/></form:label></td>
		<td><form:input type="text" path="last_name"  required="true" title="last_name should not be empty"/></td>
		</tr>
		
			
		<tr>
		<td><form:label path="password"><spring:message text="PASSWORD"/></form:label></td>
		<td><form:input type="password" path="password"  required="true" pattern=".{4,10}"  title="please enter 4 to 10 characters"/></td>
		</tr>
		
		<tr>
		<td><form:label path="email_id"><spring:message text="email_id"/></form:label></td>
		<td><form:input type="text" path="email_id"  required="true"   title="Enter valid email_id"/></td>
		</tr>
	
		<tr>
		<td><form:label path="mobile_number"><spring:message text="mobile_number"/></form:label></td>
		<td><form:input type="text" path="mobile_number"   /></td>
		</tr>
		
		<td><input type="submit" value="<spring:message text="SIGNUP"/>"/></td>
		<td><input type="reset"	value="<spring:message text="RESET"/>"/></td>			
		
		
		
	</table>
</form:form>

</body>
</html>