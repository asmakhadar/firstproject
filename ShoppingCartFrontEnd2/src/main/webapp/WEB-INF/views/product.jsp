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
		
		<a href="admin"  class="btn btn-warning btn-lg">
		<span class=" glyphicon glyphicon-step-backward"></span>Back</a></div>
		
		<div class="col-sm-3">
			<form:form action="add_product" commandName="product" method="post"
				enctype="multipart/form-data">
				<h2 style="text">PRODUCT</h2>
				<table class="table table-striped">
					<tr>
						<td>Product ID</td>
						<c:choose>
							<c:when test="${!empty product.id}">
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
						<td>Product Name</td>
						<td><form:input type="text" path="name" name="name"
								maxlength="50" required="true"/></td>
					</tr>

					<tr>
						<td>Product Price</td>
						<td><form:input type="text" path="price" name="price"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Product Description</td>
						<td><form:input type="text" path="description"
								name="description" maxlength="400" required="true"/></td>
					</tr>

					<tr>
						<td>Category List</td>
						<td><form:select path="category.name" items="${categoryList}"
								itemValue="name" itemLabel="name" required="true"></form:select></td>
					</tr>

					<tr>
						<td>Supplier List</td>
						<td><form:select path="supplier.name" items="${supplierList}"
								itemValue="name" itemLabel="name" required="true"></form:select></td>
					</tr>

					<tr>
						<td>Product Stock</td>
						<td><form:input type="text" path="stock" name="stock"
								maxlength="5" required="true"/></td>
					</tr>

					<tr>
						<td>Product Image</td>
						<td><form:input type="file" path="image" name="image" width="300px" height="300px" /></td>
					</tr>

					<tr>
							<td><input class="btn btn-success" type="submit" value="Add Product" /></td>
						<td><input class="btn btn-danger" type="reset" value="Clear" /></td>
					</tr>

				</table>
			</form:form>
		</div>
		<div class="col-sm-9"></div>
	

<c:if test="${!empty productList}">
<table class="table table-bordered">
 <thead>
<tr>
<th>PRODUCT ID</th>
<th>PRODUCT NAME</th>
<th>PRODUCT DESCRIPTION</th>
<th>PRODUCT PRICE</th>
<th>CATEGORY_ID</th>
<th>SUPPLIER_ID</th>
<th>PRODUCT STOCK</th>
<th>PRODUCT IMAGE</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
 </thead>
<c:forEach items="${productList}" var="product">
<tr>
<td>${product.id}</td>
<td>${product.name}</td>
<td>${product.description}</td>
<td>${product.price}</td>
<td>${product.category_id}</td>
<td>${product.supplier_id}</td>
<td>${product.stock}</td>
<td><img src="<c:url value="/resources/images/${product.id}.jpg"/>"width="150" height="150"/></td>
<td><a class="btn btn-warning" href="<c:url value='product_edit-${product.id}'/>">EDIT</a></td>
<td><a class="btn btn-danger" href="<c:url value='product_delete-${product.id}'/>">DELETE</a></td>
</tr>
			</c:forEach>
		</tbody>
		</table>
	</c:if>
	

</body>
</html>