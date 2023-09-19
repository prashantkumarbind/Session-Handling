
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<title>Login</title>

			<style>
			.btn:hover{
					background-color:yellow!important;
			}
			a:hover{
				background-color:black!important;
			}
			body{
			 	background-color:#ABB2B9 ;
			 }
			 .col-design{
			 	background-color:#99A3A4 ;
			 }
	</style>
</head>
<body>
		 		<div class="container" style="margin-top:120px;">
		 			 <div class="row justify-content-end">
		 				 <a href="SignUp.jsp" class="bg-success text-white p-2" style="text-decoration:none;border-radius:5px;">SignUp</a>
		 				   	</div>
				  	<div class="row justify-content-around">
				   		 <div class="col-6 p-5 col-design align-self-center">
				   		 <% 
				   		 
				   		 		String message = (String)request.getParameter("message");
				   		 		if(message!=null)
				   		 		{
				   		 %>
				   		 			<div class="w-100 text-center" style="background-color:black;color:white;">
				   		 	 	       <span> <%=message %></span>
	   				   		 	   </div>	
				   		 <%
				   		 		}
				   		 %>
				     			<div class="">
				     				<form action="CheckLogin" method="get">
				     					<div class="m-3">
				     						<input class="w-100 px-3" type="text" name="name" placeholder="Your name">
				     					</div>
				     					<div class="m-3">
				     						<input class="w-100 px-3" type="password" name="password" placeholder="Your password">
				     					</div>
				     					<div class="m-3">
				     						<input class="btn bg-success w-100 text-white" type="submit" value="Submit">
				     					</div>
				     				</form>
				     			</div>
				   		 </div>
  					</div>
				</div>
</body>
</html>