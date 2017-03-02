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
<jsp:include page="header.jsp" /> 
 <style>
 body
 {
 background-image: url(resources/images/abc.jpg);
  }
 </style>
<body>

	<div class="row">
		<a href="admin" class="btn btn-warning btn-lg">
		<span class=" glyphicon glyphicon-triangle-left"></span>Back</a></div>
		<div class="col-sm-4">

			<form:form action="add_supplier" commandName="supplier" method="post">

				<h2 style="text">SUPPLIER</h2>
				<table class="table table-striped">
					<tr>
						<td>Supplier ID</td>
						<c:choose>
							<c:when test="${!empty supplier.id}">
								<td><form:input type="text" path="id" name="id" disabled="true" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:input type="text" path="id" name="id" maxlength="20" required="true"/>
							</c:otherwise>
						</c:choose>
					</tr>

					<tr>
						<form:input path="name" hidden="true" />
						<td>Supplier Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="30" required="true"/></td>
					</tr>

					<tr>
						<td>Supplier Address</td>
						<td><form:input type="text" path="address" name="address"
								maxlength="100" required="true"/></td>
					</tr>

					<tr>
							<td><input class="btn btn-success" type="submit" value="Add Supplier" /></td>
						<td><input class="btn btn-danger" type="reset" value="Clear" /></td>
					</tr>
				</table>
			</form:form>
		</div>
		<div class="col-sm-8"></div>
	

<c:if test="${!empty supplier}">
<table class="table table-bordered">

<thead>
<tr>
<th>SUPPLIER ID</th>
<th>SUPPLIER NAME</th>
<th>SUPPLIER ADDRESS</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
</thead>
<c:forEach items="${supplierList}" var="supplier">

<tr>
<td>${supplier.id}</td>
<td>${supplier.name}</td>
<td>${supplier.address}</td>
<td><a class="btn btn-warning" href="<c:url value='supplier_edit-${supplier.id}'/>">EDIT</a></td>
<td><a class="btn btn-danger" href="<c:url value='supplier_delete-${supplier.id}'/>">DELETE</a></td>
</tr>

</c:forEach>
</table>
</c:if>


</body>
</html>