<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Employee Details</title>
<style>
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <div align="right">
        	<form action="SignOut">
            Welcome <c:out value = "${param.hrmId}"/>
			<input type = "submit" value = "Logout"/>
			</form>        
		</div>
    </header>
		<br>
		
		<div class = "container">
		<br>
			<form action = "/addEmployee" method = "post" align="center">
  					<div class="row m-4">
                    	<label class="col-md-6"  for="name">Employee Code : </label>
						<input type = "text" class="col-md-4" name = "empCode" required />
                    </div>

                    <div class="row m-4">
                        <label class="col-md-6"  for="name">Employee Name : </label>
                        <input type = "text"  class="col-md-4" name = "empName" required />
                    </div>

                    <div class="row m-4">
                            <label class="col-md-6"  for="name">Location : </label>
							<textarea style="overflow:auto;" class="col-md-4" name="empLoc" cols="20" rows="2" required></textarea>						
					</div>

                    <div class="row m-4">
                            <label class="col-md-6"  for="name">E-Mail  : </label>
							<input type = "text" name = "empMail" class="col-md-4" required />
                    </div>

                    <div class="row m-4">
                            <label class="col-md-6"  for="name">Date of birth  : </label>
							<input type = "date" name = "empDOB" class="col-md-4" required/> 
                    </div>

                    <div style="margin-left:255px;" >
			 	        <input type = "submit" class="btn btn-primary col-md-1" value = "Save" />
                    </div>
                    <div style="margin-left:550px;">
				        <input type="reset" class="btn btn-danger col-md-2" value="Cancel">
                    </div>  
  			</form>
            </div>
		
</body>
</html>