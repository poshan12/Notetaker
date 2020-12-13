package com.note;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connect.Database;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String id =request.getParameter("note_id");
		try {
			Connection con = Database.getConnection();
			Statement st = con.createStatement();
		String sql = "delete note where id ="+id;
		System.out.println(sql);
		 st.executeUpdate(sql);
		response.sendRedirect("AllNote.jsp");
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
