<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Insert title here</title>
<style>
/* .form-group{
border-collapse: collapse;
    width: 100%;
    
     text-align: left;
    padding: 4px;
    
    background-color: ;
    color: white;
}
.btn btn-success{
color:green;
} */

/*
/* Created by Filipe Pina
 * Specific styles of signin, register, component
 */
/*
 * General styles
 */

body {
    background-color: #eee;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    background-color: #fff;
    border-radius: 0.3em;
}

*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
}



</style>
</head>

<body>
 <div class="content">
			<fieldset>
				<legend>Become Member</legend>
		
				<form:form modelAttribute="newUser" class="form-inline"><br />
				<div style="margin-bottom: 10px" class="input-group">
					<form:label path="firstname" class="col-md-3 control-label">First name:</form:label>
					<div class="col-md-9">
					<form:input type="text" class="form-control" placeholder="Firstname" path="firstname" /><br />
					</div>
					</div>
					
					<!-- to display validation messages -->
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
					<br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="lastname" class="col-md-3 control-label">Last name: </form:label>
					<div class="col-md-9">
					<form:input path="lastname" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="email" class="col-md-3 control-label">Email Id: </form:label>
					<div class="col-md-9">
					<form:input path="email" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="phonenumber"  class="col-md-3 control-label">Phone Number: </form:label>
					<div class="col-md-9">
					<form:input path="phonenumber" /><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="password" class="col-md-3 control-label">Password: </form:label>
					<div class="col-md-9">
					<form:input path="password" type="password"/><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="confirmpassword" class="col-md-3 control-label">Confirm Password: </form:label>
					<div class="col-md-9">
					<form:input path="confirmpassword" type="password"/><br />
					</div>
					</div>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<div style="margin-bottom: 10px" class="input-group">
					<form:label path="age" class="col-md-3 control-label">Age: </form:label>
					<div class="col-md-9">
					<form:input path="age" /><br />
					</div>
					</div>
					
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('age')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<input name="_eventId_submit" type="submit" class="btn btn-success"  type="button" value="Submit" /><br />
				</form:form>
			</fieldset>
		</div>
		 
<%-- 		<div class="container">
            <form class="form-horizontal" role="form">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 

control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" 

placeholder="Full Name" class="form-control" autofocus>
                        <span class="help-block">Last Name, First 

Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-

label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" 

placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 

control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" 

placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 

control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" 

class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="country" class="col-sm-3 

control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-

control">
                            <option>Afghanistan</option>
                            <option>Bahamas</option>
                            <option>Cambodia</option>
                            <option>Denmark</option>
                            <option>Ecuador</option>
                            <option>Fiji</option>
                            <option>Gabon</option>
                            <option>Haiti</option>
                        </select>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label class="control-label col-sm-

3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" 

id="femaleRadio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" 

id="maleRadio" value="Male">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" 

id="uncknownRadio" value="Unknown">Unknown
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label class="control-label col-sm-3">Meal 

Preference</label>
                    <div class="col-sm-9">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" 

id="calorieCheckbox" value="Low calorie">Low calorie
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" 

id="saltCheckbox" value="Low salt">Low salt
                            </label>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">I accept 

<a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-

primary btn-block">Register</button>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container --> --%>
	
</body>
</html>