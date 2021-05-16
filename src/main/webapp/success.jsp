<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            padding: 0%;
            margin: 0%;
        }
        body{
            font-family: "Open Sans", sans-serif;
            background-color: white;
        }
        header{
            height:5vh;
            
            align-items: center;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #0b0c10;
        }
        
 
        table{
            margin: auto;
        }
        th{
            border: 1px solid black;
            padding: 8px 15px;
            background-color: navy;
            color: white;
        }
        td{
            border: 1px solid black;
            padding: 8px 15px;
            text-align: center;
        }
       

    </style>
</head>
<body>
		<header>
			<div>
				<table width = "100%">
					<tr>
						<td align="right">
							<h2>Welcome <c:out value = "${hrmId}"/> !</h2>
						</td>
						<td align = "right">
							<form action="SignOut">
							<input type = "submit" value = "SignOut"/>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</header>
		<fieldset>
		<legend>   &nbsp; Employee Listings &nbsp;   </legend>
		<div>
  			<div align = "center">

					<div align=center>
					<a href="upload.jsp?hrmId=${hrmId}" > <input
						type="submit" value="Upload Employee Details" />
					</a>
					</div>
				
				<br>
				
				<div align="center">
					<form action="Download" >
						
       
        <button id="upload" onclick="window.print()">Download Employee Details</button>

					</form>
				</div>
				</div>
  			
  		
  			<br>
  				<p 
					style="color: blue; text-align: center; font-weight: bold; font-family: Arial, Helvetica, sans-serif;">
					${result}
				</p>
  			<br>
  			<table class = "table table-striped table-bordered">
  				<tr class="table-dark">
  					<th>Employee Code</th>
  					<th>Employee Name</th>
  					<th>Location</th>
  					<th>E-mail</th>
  					<th>D.O.B</th>
  					<th>Actions</th>
  				</tr>
  				<c:forEach items = "${employees}" var = "employee">
				
				<tr class = "emp_row">
  					<td>${employee.empCode}</td>
  					<td>${employee.empName}</td>
  					<td>${employee.empLoc}</td>
  					<td>${employee.empMail}</td>
  					<td>${employee.empDOB}</td>
					<td>
						<form action = "edit.jsp" method = "get">
							<input type = "hidden" name = "empCode" value = "${employee.empCode}">
							<input type = "hidden" name = "hrmId" value = "${hrmId}">
							<input type = "submit" value = "Edit" >
						</form>
						
					</td>
				</tr>
				
				
  			</c:forEach>
  			</table>
  			
		</div>
		
		<br>
		<br>

		</fieldset>
</body>
</html>