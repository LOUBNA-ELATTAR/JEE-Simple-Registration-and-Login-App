package com.tp1.register;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/tp1?useSSL=false&serverTimezone=UTC","root","test");
			PreparedStatement pst = con.prepareStatement("select * from users where login = ? and password = ?");
			pst.setString(1, login);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			
			if (rs.next()) {
				session.setAttribute("name", rs.getString("fname"));
				dispatcher = request.getRequestDispatcher("welcome.jsp");
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			
		}
		
	}

}
