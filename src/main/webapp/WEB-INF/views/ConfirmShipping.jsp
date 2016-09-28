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
<title>Confirm Shipping Address</title>
</head>
<body>
<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="shippingaddress">
				<form:label path="names">Name:</form:label>${shippingaddress.names}
					<br />
				<br />
				<form:label path="address">Address :</form:label>${shippingaddress.address}
					<br />
				<br />
				<form:label path="mobilenumbers">Mobile number :</form:label>${shippingaddress.mobilenumbers}
					<br />
				<br />
				<form:label path="emails">E-Mail :</form:label>${shippingaddress.emails}
					<br />
				<br />
				<form:label path="city">City :</form:label>${shippingaddress.city}
					<br />
				<br />
				<form:label path="country">Country:</form:label>${shippingaddress.country}
					<br />
				<br />
				<form:label path="pincode">Pincode :</form:label>${shippingaddress.pincode}
					<br />
				<br />
				
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" style=color:black type="submit" value="Edit" />
				<input name="_eventId_submit" style=color:black type="submit" value="ConfirmShipping" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html>