package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			  response.setContentType("text/html");
			  
			  
			 //get data from the form 
			 String uname = (String)request.getParameter("name");
			 String upassword = (String)request.getParameter("password");
			 System.out.println("*******************Your user name is the ::"+uname);
			 System.out.println("*******************Your user password is the ::"+upassword);
			 
		try {
			 if(uname.isEmpty())
			 {
				   response.sendRedirect("UserLogin.jsp?message=please enter the user nane");
			 }
			 else if(upassword.isEmpty())
			 {
			 	   response.sendRedirect("UserLogin.jsp?message?please enter the password");
			 }
		}catch(Exception e) {
			 System.out.println("Exception Occure in the CheckLogin.java"+e);
		}
			 try {
					 // database concept
					 String query1 = "select * from userlogin where user_name=? AND user_password=?";
					 Class.forName("com.mysql.cj.jdbc.Driver");
					 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sessionconcept","root","");
					 PreparedStatement pstmt = connection.prepareStatement(query1);
					 pstmt.setString(1, uname);
					 pstmt.setString(2, upassword);
					 ResultSet rs = pstmt.executeQuery();
					 if(rs.next())
					 {
						 	String name = rs.getString("user_name");
						 	String password = rs.getString("user_password");
						 	String email = rs.getString("user_email");
						 	System.out.println("\n*********Check Concept*******\nUser Name::"+name+"\nUser Password::"+password+"\nUser Email::"+email);
						 	//1.create the Session Object
						 		
						 	HttpSession session =request.getSession();
						 	session.setAttribute("user_name", name);
						 	session.setAttribute("user_password", password);
						 	
						 	//2. Cookie Handling 
						 	
						 	Cookie c1 = new Cookie("user_name1",name);
						 	response.addCookie(c1);
						 	Cookie c2 = new  Cookie("user_password1",password);
						 	response.addCookie(c2);
						 	
						    //3.open the concept page show the session value
						    response.sendRedirect("CheckSessonValue.jsp");
					 }
					 else {
						 	response.sendRedirect("UserLogin.jsp?message=user name and password miss match");
					 }
			 }catch(Exception e) {
				 System.out.println("Exception Occure in the CheckLogin.java class"+e);
			 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
