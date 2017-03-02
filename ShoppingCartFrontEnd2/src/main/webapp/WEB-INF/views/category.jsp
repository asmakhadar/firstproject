<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

 <style>
 body
 {
  background-image: url(resources/images/abc.jpg);
  }
  
  
 </style>
 <title>Categories</title>
</head>
<body>
	<jsp:include page="header.jsp" /> 

	<div class="row">
		
		
		<a href="admin" class="btn btn-warning btn-lg">
          <span class="glyphicon glyphicon-step-backward"></span>Back
        </a>
			
		</div>
		<div class="col-sm-4">
			<form:form action="add_category" commandName="category" method="post">
				<h2 style="text">CATEGORY</h2>
				<table class="table table-striped">
					<tr>
						<td>Category ID</td>
						<c:choose>
							<c:when test="${!empty category.id}">
								<td><form:input type="text" path="id" name="id"
										disabled="true" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input type="text" path="id" name="id"
										maxlength="20" required="true"/></td>
							</c:otherwise>
						</c:choose>
					</tr>

					<tr>
						<form:input path="id" hidden="true" />
						<td>Category Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="30" required="true"/></td>
					</tr>

					<tr>
						<td>Description</td>
						<td><form:input type="text" path="description"
								name="description" maxlength="500" required="true"/></td>
					</tr>

					<tr>
						
							<td><input class="btn btn-success" type="submit" value="Add Category" /></td>
					
						<td><input class="btn btn-danger" type="reset" value="Clear" /></td>
					</tr>
				</table>
			</form:form>
			<div class="col-sm-8"></div>
 </div>

<div class="container">

<c:if test="${!empty categoryList}">
<table class="table table-bordered"> 

<thead>
<tr>
<th>CATEGORY ID</th>
<th>CATEGORY NAME</th>
<th>CATEGORY DESCRIPTION</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
</thead>

<c:forEach items="${categoryList}" var="category">

<tr>
<td>${category.id}</td>
<td>${category.name}</td>
<td>${category.description}</td>
<td><a class="btn btn-warning" href="<c:url value='category_edit-${category.id}'/>">EDIT</a></td>
<td><a class="btn btn-danger" href="<c:url value='category_delete-${category.id}'/>">DELETE</a></td>
</tr>

</c:forEach>
</table>
</c:if>
</div>
</body>
</html>