package com.note;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connect.Database;


/**
 * Servlet implementation class AddNote
 */
public class AddNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNote() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		Note n = new Note();
		n.setId(new Random().nextInt(100));
		n.setContent(request.getParameter("content"));
		n.setData(request.getParameter("data"));
		
		
		
		;
		System.out.println("note "+n.getId());
		System.out.println("note "+n.getData());
		System.out.println("note "+n.getContent());
		try {
			
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into note values(?,?,?)");
			ps.setInt(1, n.getId());
			ps.setString(2, n.getContent());
			ps.setString(3, n.getData());
			ps.execute();
			response.sendRedirect("home.jsp");
		
		} catch (SQLException e) {
			System.out.print(e.getErrorCode());
			System.out.print(e.getMessage());
		}
		
	}
	

}
