<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<title>Insert title here</title>
</head>

<style>
body {
    background-image: url(resources/images/abc.jpg);
    font-family: "Helvetica Neue", Helvetica, Arial;
    padding-top: 00px;
}

.container {
    width: 406px;
    max-width: 406px;
    margin: 0 auto;
}

#signup {
    padding: 0px 25px 25px;
    background: #fff;
    box-shadow: 
        0px 0px 0px 5px rgba( 255,255,255,0.4 ), 
        0px 4px 20px rgba( 0,0,0,0.33 );
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    display: table;
    position: static;
}

#signup .header {
    margin-bottom: 20px;
}

#signup .header h3 {
    color: #333333;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 5px;
}

#signup .header p {
    color: #80c1ff;
    font-size: 14px;
    font-weight: 300;
}

#signup .sep {
    height: 1px;
    background: #80c1ff;
    width: 406px;
    margin: 0px -25px;
}

#signup .inputs {
    margin-top: 25px;
}

#signup .inputs label {
    color: #000;
    font-size: 14px;
    font-weight: 300;
    letter-spacing: 1px;
    margin-bottom: 7px;
    display: block;
}

input::-webkit-input-placeholder {
    color:    #80c1ff;
}

input:-moz-placeholder {
    color:    #80c1ff;
}

#signup .inputs input[type=email], input[type=password] {
    background: #80c1ff;
    font-size: 1.2rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 13px 10px;
    width: 330px;
    margin-bottom: 20px;
    box-shadow: inset 0px 2px 3px rgba( 0,0,0,0.1 );
    clear: both;
}

#signup .inputs input[type=email]:focus, input[type=password]:focus {
    background: #80c1ff;
    box-shadow: 0px 0px 0px 3px #e0b385, inset 0px 2px 3px rgba( 0,0,0,0.2 ), 0px 5px 5px rgba( 0,0,0,0.15 );
    outline: none;   
}

#signup .inputs .checkboxy {
    display: block;
    position: static;
    height: 25px;
    margin-top: 10px;
    clear: both;
}

#signup .inputs input[type=checkbox] {
    float: left;
    margin-right: 10px;
    margin-top: 3px;
}

#signup .inputs label.terms {
    float: left;
    font-size: 14px;
    font-style: italic;
}

#signup .inputs #submit {
    width: 90%;
    margin-top: 30px;
    padding: 15px 0;
    color: #000;
    font-size: 14px;
    font-weight: 500;
    letter-spacing: 1px;
    text-align: center;
    text-decoration: none;
        background: -moz-linear-gradient(
        top,
        #80c1ff 0%,
        #80c1ff);
    background: -webkit-gradient(
        linear, left top, left bottom, 
        from(#80c1ff),
        to(#80c1ff));
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    border: 1px solid #80c1ff;
    -moz-box-shadow:
        0px 5px 5px rgba(000,000,000,0.1),
        inset 0px 1px 0px rgba(255,255,255,0.5);
    -webkit-box-shadow:
        0px 5px 5px rgba(000,000,000,0.1),
        inset 0px 1px 0px rgba(255,255,255,0.5);
    box-shadow:
        0px 5px 5px rgba(000,000,000,0.1),
        inset 0px 1px 0px rgba(255,255,255,0.5);
    text-shadow:
        0px 1px 3px rgba(000,000,000,0.3),
        0px 0px 0px rgba(255,255,255,0);
    display: table;
    position: static;
    clear: both;
}

#signup .inputs #submit:hover {
    background: -moz-linear-gradient(
        top,
        #80c1ff 0%,
        #80c1ff);
    background: -webkit-gradient(
        linear, left top, left bottom, 
        from(#80c1ff),
        to(#80c1ff));
}
</style>
</head>
<body>
<a href="home"  class="btn btn-warning btn-lg">
		<span class=" glyphicon glyphicon-home"></span> HOME</a>
		
<div class="container">
<form action="<c:url value='j_spring_security_check'/>"  id="signup" method="POST" role="form">

        <div class="header">
        
            <h3>LOGIN</h3>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
        <label for="email_id">Email_ID:</label>
            <input type="email" name="username" id="username" placeholder="Enter your email" required="true" autofocus/>
        
         <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Enter password" required="true"/>
            
            <input id=submit type="submit" value="LOGIN">
	       </div>
	       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	       
    </form>
</div>


</body>
</html>
