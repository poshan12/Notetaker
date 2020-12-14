package com.note;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;

import com.all.bean.Note;
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
		
		int i = Integer.parseInt(request.getParameter("userId"));
	
		Note n = new Note();
		n.setId(new Random().nextInt(100));
		n.setContent(request.getParameter("content"));
		n.setData(request.getParameter("data"));
		n.setUserID(i);
		
		Date d = new Date();
			java.sql.Timestamp t = new Timestamp(d.getTime());
			
		
		
		try {
			
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into note values(?,?,?,?,?)");
			ps.setInt(1, n.getId());
			ps.setString(2, n.getContent());
			ps.setString(3, n.getData());
			ps.setInt(4, n.getUserID());
			ps.setTimestamp(5, t);
			ps.execute();
			response.sendRedirect("home.jsp");
		
		} catch (SQLException e) {
			System.out.print(e.getErrorCode());
			System.out.print(e.getMessage());
		}catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
	}
	

}
