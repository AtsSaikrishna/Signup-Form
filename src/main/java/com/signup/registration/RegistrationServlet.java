package com.signup.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String confirmPassword = request.getParameter("confirmPassword");
		String contact = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root", "MyDatabase");
			PreparedStatement pst = con
				.prepareStatement("insert into users(userName, email, password, confirmPassword, contact) values(?, ?, ?, ?, ?)");
			pst.setString(1, userName);
			pst.setString(2, email);
			pst.setString(3, password);
			pst.setString(4, confirmPassword);
			pst.setString(5, contact);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
