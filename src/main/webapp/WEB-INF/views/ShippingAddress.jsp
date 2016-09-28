<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<title>Shipping Details</title>
</head>
<body>
	<div class="container">
		<div class=row>
			<div class='login' style="color: black">
				
								<form:form modelAttribute="shippingaddress" accept-charset="utf-8"
					class="form">
					<form:input path="names" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" />
					<br />
					<form:input path="address" required="true"
						class="form-control input-lg" placeholder="Your Address" />
					<br />
					<form:input path="mobilenumbers" pattern="[9|7|8][0-9]{9}"
						required="true" class="form-control input-lg"
						placeholder="Your Mobile Number" />
					<br />
					<form:input path="pincode" id="pincode" required="true"
						class="form-control input-lg" placeholder="Pincode" />
					<br />
					
					<form:input path="emails" id="emails" required="true"
						class="form-control input-lg" placeholder="Email" />
					<br />
					
					<form:input path="city" id="city" required="true"
						class="form-control input-lg" placeholder="City" />
					<br />
					
					<form:input path="country" id="country" required="true"
						class="form-control input-lg" placeholder="Country" />
					<br />
				<div class="row">
						<div class="col-md-6">
							<button class="btn btn-lg btn-primary btn-block signup-btn"
								name="_eventId_submit" type="submit" id="btnSubmit"
								value="submit">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>