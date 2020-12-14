package com.note;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.all.bean.ResisterBean;
import com.connect.Database;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
		System.out.println(email+" "+pwd);
			
			try {
				Connection con = Database.getConnection();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from noteregister where email='"+email+"' and pwd='"+pwd+"'");
				while(rs.next())
				{
					HttpSession s = req.getSession();
					s.setAttribute("id", rs.getString(1));
					resp.sendRedirect("home.jsp");
					
				}
					System.out.println(rs.getString(1));
//				Statement st = con1.createStatement();
//				  String sql = "SELECT id FROM noteregister where email='"+email+"' and pwd='"+pwd+"' ";
//
//				ResultSet rs = st.executeQuery(sql);
//				while(rs.next())
//				{
//					HttpSession s = req.getSession();
//					s.setAttribute("id", "rs.getString(1)");
//					resp.sendRedirect("home.jsp");
//				}
				
				
			} catch (SQLException e) {
				System.out.println("message "+e.getMessage());
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ResisterBean rs = new ResisterBean();
			rs.setId(new Random().nextInt(100));
			rs.setName(request.getParameter("userName"));
			rs.setEmail(request.getParameter("email"));
			rs.setPhone(request.getParameter("phone"));
			rs.setAddress(request.getParameter("address"));
			rs.setPwd(request.getParameter("pwd"));
			//System.out.println(rs.toString());
			
//		
//		
				try {
			
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into noteregister values(?,?,?,?,?,?)");
			ps.setInt(1, rs.getId());
			ps.setString(2, rs.getName());
			ps.setString(3, rs.getEmail());
			ps.setString(4, rs.getPhone());
			ps.setString(5, rs.getAddress());
			ps.setString(6, rs.getPwd());
			ps.execute();
			response.sendRedirect("login.jsp");
				
		} catch (SQLException e) {
			System.out.print("dfjdkjf "+e.getMessage());
		}
				
	}

}
