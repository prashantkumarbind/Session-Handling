
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("html/text");
			String uname=request.getParameter("name");
			String uemail=request.getParameter("email");
			String upassword=request.getParameter("password");
			
			if(uname.isEmpty())
			{
				  response.sendRedirect("SignUp.jsp?message=Please enter the user name");
			}
			else if(uemail.isEmpty())
			{
				 response.sendRedirect("SignUp.jsp?message=Please enter the email");
			}
			else if(upassword.isEmpty()) {
				 response.sendRedirect("SignUp.jsp?message=Please enter the password");
			}
			System.out.println("**********************************Successfully--1*******************************");
			try {
					String query1="insert into userlogin values(?,?,?)";
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sessionconcept","root","");
					PreparedStatement pstmt = connection.prepareStatement(query1);
					pstmt.setString(1, uname);
					pstmt.setString(2, uemail);
					pstmt.setString(3, upassword);
					System.out.println("**********************************Successfully--2*******************************");
					int result = pstmt.executeUpdate();
					if(result==1)
					{
						 System.out.println("1 of inserted data");
						 response.sendRedirect("UserLogin.jsp?message=signup successfully");
						 
					}
					else
					{
						 response.sendRedirect("SignUp.jsp?message=please enter again information");
					}
					
			}catch(Exception e) {
				System.out.println("Exception Occure in the Signup.java ::"+e);
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
