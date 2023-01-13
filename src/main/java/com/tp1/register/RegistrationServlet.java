package com.tp1.register;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");
		String mobile = request.getParameter("mobile");
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/tp1?useSSL=false&serverTimezone=UTC","root","test");
			PreparedStatement pst = con.prepareStatement("insert into users(fname, lname, login, password, dob, mobile) values (?,?,?,?,?,?)");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, login);
			pst.setString(4, password);
			pst.setString(5, dob);
			pst.setString(6, mobile);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("register.jsp");
			
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
				
			dispatcher.forward(request, response);			
				
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				DriverManager.getConnection("jdbc:mysql://localhost:3308/tp1","root","test").close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}