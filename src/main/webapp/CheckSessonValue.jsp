<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
   		<!-- Google Font Family -->
   		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Handjet:wght@600&display=swap" rel="stylesheet">
<title>SignUp</title>
	<style>
			body{
					font-family: 'Handjet', cursive;
					
			}
			h1{
				 border-bottom:3px solid red;
				 margin-top:10px;
				 border-bottom:3px solid yellow;
				 border-bottom:3px solid blue;
			}
			h2{
				 border-bottom:3px solid red;
			}
	</style>

</head>
<body>

				<div class="row">
					<div class="col-12 text-center">
							<h1>It Is The Session Handling Value Showing..</h1>
							<h2></h2>
					</div>
				</div>
				<%
					/*  String uname="user_name";
					 String upassword="user_password"; */
					 
					 //session get value
					 HttpSession session1 = request.getSession();
					 String name = (String)session1.getAttribute("user_name");
					 String password = (String)session1.getAttribute("user_password");
					 if(name.isEmpty() || password.isEmpty())
					 {
						  response.sendRedirect("UserLogin.jsp?First Loggin then use");
					 }
					 
					 //cookie get value
					 Cookie cookie11[] = request.getCookies();
					 String name1 = cookie11[0].getValue();
					 String password1 = cookie11[1].getValue();
					 if(name1.isEmpty() || password1.isEmpty())
					 {
						  response.sendRedirect("UserLogin.jsp?First Loggin then use");
					 }
					
				%>
				<div class="container" style="margin-top:10px;">
				  	<div class="row justify-content-around">
				  		<div class="col-6 bg-dark text-white p-5">
				  			<strong>Your Name::</strong><span><%=name %></span>
				  		</div>
				  			<div class="col-6 bg-warning text-white p-5">
				  			  <strong>Your Name::</strong><span><%=password %></span>
				  			</div>
				  			<div class="col-6 bg-dark text-white my-5 p-5">
				  			<strong>Your Name::</strong><span><%=name1 %></span>
				  		</div>
				  			<div class="col-6 bg-warning text-white my-5 p-5">
				  			  <strong>Your Password::</strong><span><%=password1 %></span>
				  			</div>
				  	</div>
				</div>
</body>
</html>