<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
 <jsp:include page="header.jsp" /> 
<style>
 body
 {
  background-image: url(resources/images/abc.jpg);
  }
 </style>
 
<body>
<br>
<br>
<div class="container">
<div class="col-sm-4">

<a href="product" type="button" class="btn btn-success">MANAGE PRODUCT</a></div>
<br>

<div class="col-sm-4">
<a href="category" type="button" class="btn btn-success">MANAGE CATEGORY</a></div>

<br>
<div class="col-sm-4">
<a href="supplier" type="button" class="btn btn-success">MANAGE SUPPLIER</a></div>

</div>


</body>
</html>