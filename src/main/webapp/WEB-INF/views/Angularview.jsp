<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<title>Insert title here</title>
</head>
<script type="text/javascript">
	angular.module('myApp', []).controller('mainController',
			function($scope, $http) {
				alert("hi");

				console.log("im in getProduct");
				$http({
					method : 'GET',
					url : 'prd'
				}).success(function(data, status, headers, config)

				{
					alert(data);
					//$scope.categ=JSON.parse(JSON.stringify(data));
					$scope.product = data;
					alert("aaaaaaaaaaa");
				});

			});
</script>
<title>View All</title>
</head>
<body>
	<div class="container" ng-app="myApp" ng-controller="mainController">
		<input type="text" class="form-control" placeholder="Search"
			ng-model="search">
		<table>
			<tr ng-repeat="p in product|filter:search">
				<td>{{p.id}}</td>
				<td>{{p.name}}</td>
				<td>{{p.description}}</td>
				<td>{{p.price}}</td>
				<td>{{p.category}}</td>
		</table>
	</div>


</body>
</html>