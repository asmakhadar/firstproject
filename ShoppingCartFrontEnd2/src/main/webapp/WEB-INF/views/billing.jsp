<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<title>Billing Details</title>
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

#signup .inputs input[type=name], input[type=debit_card_number],input[type=card_cvv],input[type=expiration_month],input[type=expiration_year]{
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

#signup .inputs input[type=name]:focus, input[type=debit_card_number]:focus input[type=card_cvv]:focus  input[type=expiration_month]:focus  input[type=expiration_year]:focus{
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
	<div class="container" id="signup">
		<div class="header">

		
			<h3><center>BILLING DETAILS</center></h3>

		</div>

		<div class="sep"></div>
		<form:form action="thankyou" commandName="billing" method="post">
        <div class="inputs">

                           <label for="name">Name: </label>
								<form:input id="name" name="name" maxlength="75"
									required="required" type="name" path="name"
									placeholder="Enter Name" />
							

								<label for="debit_card_number">Debit Card Number: </label>
								<form:input id="debit_card_number" name="debit_card_number" maxlength="16"
									required="required" pattern="[0-9]{16}" type="debit_card_number" path="debit_card_number"
									title="Enter valid 16 digit Card no" placeholder="Enter Debit Card Number" />
							
							
								<label for="card_cvv">Card CVV: </label>
								<form:input id="card_cvv" name="card_cvv" 
									required="required" type="card_cvv" path="card_cvv" maxlength="3" pattern="[0-9]{3}" title="Enter valid 3 digit CVV"
									placeholder="Enter CVV" />
							
							
								<label for="expiration_month">Expiration_month: </label>
                                    <select class="form-control" name="expiration_month">
                                        <option value="Month">Month</option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                </select>
                                <br>
                                <label for="expiration_year">Expiration_year: </label>
							
                                    <select class="form-control" name="expiration_year">
                                        <option value="">Year</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027</option>
                                        <option value="2025">2028</option>
											</select>
											<br>
								 <input type="submit" value="PROCEED TO PAY" class="btn btn-success">
								<input type="reset" value="CANCEL PAYMENT" class="btn btn-warning">
							</div>
						</form:form>
					</div>
</body>
</html>      
                           
                                     