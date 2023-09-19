<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<title>SignUp</title>

	<style>
			.btn:hover{
					background-color:red!important;
			}
			a:hover{
				background-color:red!important;
			}
			body{
				background-color:#F23C83 ;
			}
			.col-design{
				background-color:#E82B74;
			}
	</style>
</head>
<body>
		 		<div class="container" style="margin-top:150px;">
				  	<div class="row justify-content-around">
				   		 <div class="col-6 p-5 col-design align-self-center">
				   		 	  <% 
				   		 
				   		 		String message = (String)request.getParameter("message");
				   		 		if(message!=null)
				   		 		{
				   		 	  %>
				   		 			<div class="w-100 text-center" style="background-color:red;color:yellow;">
				   		 	 	       <span> <%=message %></span>
	   				   		 	   </div>	
				   			  <%
				   		 		}
				   			  %>
				     			<div class="">
				     				<form action="Signup" method="get">
				     					<div class="m-3">
				     						<input class="w-100 px-3" type="text" name="name" placeholder="enter name">
				     					</div>
				     					<div class="m-3">
				     						<input class="w-100 px-3" type="email" name="email" placeholder="enter email">
				     					</div>
				     					<div class="m-3">
				     						<input class="w-100 px-3" type="password" name="password" placeholder="enter password">
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