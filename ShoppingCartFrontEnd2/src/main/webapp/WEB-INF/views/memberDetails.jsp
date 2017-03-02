<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
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
    color:     black;
}

input:-moz-placeholder {
    color:     black;
}

#signup .inputs input[type=email], input[type=password],input[type=first_name],input[type=last_name],input[type=mobile_number] {
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

#signup .inputs input[type=email]:focus, input[type=first_name]:focus input[type=last_name]:focus input[type=password]:focus input[type=mobile_number]:focus{
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

	<div class="container" id="signup">
		<div class="header">

			<h4><center>New customer?</center></h4>
			<h3><center>REGISTER HERE</center></h3>

		</div>

		<div class="sep"></div>
		<form:form modelAttribute="user">
			<div class="inputs">

				<label for="first_name">First Name: </label>
				<form:input id="first_name" name="first_name" maxlength="20"
					required="required" type="first_name" path="first_name"
					placeholder="Enter your first name" autofocus="autofocus"/>
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<label for="last_name">Last Name: </label>
				<form:input id="last_name" name="last_name" maxlength="20"
					required="required" type="last_name" path="last_name"
					placeholder="Enter your Last name" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<label for="email_id">Email id: </label>
				<form:input id="email_id" name="email_id" maxlength="20"
					required="required" type="email" path="email_id"
					placeholder="Enter your email" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<label for="password">Password: </label>
				<form:input id="password" name="password" maxlength="20"
					required="required" type="password" path="password"
					pattern=".{6,20}" title="Minimum 6 characters required"
					placeholder="Enter Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<label for="mobile_number">Mobile number: </label>
				<form:input id="mobile_number" name="mobile_number" maxlength="20"
					required="required" type="mobile_number" path="mobile_number"
					pattern=".{6,20}" placeholder="Enter mobile number" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				 
				<input name="_eventId_submit" id=submit type="submit" value="Sign Up" />
			</div>


		</form:form>
	</div>


</body>
</html>


