<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
   
<jsp:include page="header.jsp" /> 

<style>
body {
 background-image: url(resources/images/abc.jpg);
 
  background-size:cover;
  
  background-repeat:no-repeat;
  
   background-position:center center;
  
}

   .carousel-inner > .item > img,  
   .carousel-inner > .item > a > img   
    {  
       width: 70%;  
      margin: auto; 
   }  

	    </style> 
</head>
<body>

  <div> 
  <br> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
 <ol class="carousel-indicators"> 
   <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
    <li data-target="#myCarousel" data-slide-to="1"></li> 
     <li data-target="#myCarousel" data-slide-to="2"></li> 
      <li data-target="#myCarousel" data-slide-to="3"></li> 
       <li data-target="#myCarousel" data-slide-to="4"></li> 
    </ol> 
    <div class="carousel-inner" role="listbox"> 
     <div class="item active"> 
       <img src="<c:url value="resources/images/gucci.jpg" />" alt="gucci" width="400" height="400"> 
     </div> 
    <div class="item"> 
      <img src="resources/images/kk.jpg" alt="kk"> 
    </div> 
     <div class="item"> 
       <img src="resources/images/PROD_020.jpg" alt="rolex"> 
    </div>
     <div class="item"> 
       <img src="resources/images/wallpaper.jpg" alt="wallpaper"> 
    </div> 
  </div> 
   <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
    <span class="sr-only">Previous</span> 
  </a> 
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
  <span class="sr-only">Next</span> 
   </a> 
     </div> 
</div> 
<br>
<br>
<jsp:include page="watches.jsp"></jsp:include>
</body>
</html>