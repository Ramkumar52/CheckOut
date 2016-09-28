<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> --%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


	<!--Container 1-->
	 <div class="container"> 
<div class="row">
	<c:forEach items="${productmodelList}" var="productmodel">
		<div class="col-xs-3">
			<div class="thumbnail">

				<img
					src="<c:url value="resources/upload/${productmodel.imgname}.jpg"/>"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-3 col-xs-3">

							<align-left>
								<h3>${productmodel.name}</h3>
							</align-left>

						</div>
					</div>

					<div class="row">
						<div class="col-md-3 col-xs-3 price">

							<h3>
								
								<align-left>
									<label>${productmodel.price}</label>
								</align-left>
							</h3>
							
						</div>
					</div>
					</div>
					
					<div class="row">
							<div class="col-md-6">
								<a href="#" class="btn btn-default "> view in detail</a>
							</div>
							<div class="col-md-6">
								<a href="addtocart/${productmodel.id}" class="btn btn-default"><button type="button" class="btn btn-success btn-add"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</button></a>
							</div>
						</div>
						<hr>
					
					<sec:authorize access="hasRole('ROLE_USER')">
						<div class="row">
							<div class="col-md-6">
								<a href="#" class="btn btn-default "> view in detail</a>
							</div>
							<div class="col-md-6">
								<a href="addtocart/${productmodel.id}" class="btn btn-default"><button type="button" class="btn btn-success btn-add"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</button></a>
							</div>
						</div>
						<hr>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='test/edit/${productmodel.id}'/>"
									class="btn btn-default " class="glyphicon glyphicon-pencil">
									Edit</a>
							</div>
							<div class="col-md-6">
								<a href="<c:url value='temp/delete/${productmodel.id}'/>"
									class="btn btn-default"><span
									class="glyphicon glyphicon-delete"></span> Delete</a>
							</div>
						</div>
					</sec:authorize>
			</div>
		</div>
		</c:forEach>
</div>
</div> 
</body>
</html>