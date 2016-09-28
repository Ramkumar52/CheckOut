<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Payment Type</title>
</head>
<body>

	<div class="container">
		<h2>PAYMENT</h2>
		<hr>
		<p>Please choose the Payment Method</p>
		<form:form>
			<label class="radio-inline"> <input type="radio"
				name="optradio">Cash On Delivery
			</label>
			<br>
			<label class="radio-inline"> <input type="radio"
				name="optradio">NetBanking
			</label>
			<br>
			<label class="radio-inline"> <input type="radio"
				name="optradio">Credit/Debit Card
			</label>
			<br>
			<!-- <a href="ordersuccess" class="btn btn-default"><button type="button" class="btn btn-success btn-add"><span
									class="glyphicon glyphicon-shopping-cart"></span> Submit</button></a> -->
			<input name="_eventId_submit" style="color: black" type="submit"
				value="submit" />
		</form:form>
	</div>

</body>
</html>