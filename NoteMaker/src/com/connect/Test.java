package com.connect;


import java.util.*;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.*;


public class Test {

   public static void main(String args[]) {
      Date dNow = new Date( );
      SimpleDateFormat ft =       new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");

      System.out.println("Current Date: " + ft.format(dNow));
      SimpleDateFormat ft1 =new SimpleDateFormat (" dd-MMM-yy ");
      System.out.println(java.time.LocalDate.now());
     
     
  try {
	Connection con = Database.getConnection();
	PreparedStatement ps = con.prepareStatement("insert into poshan values(?,?,?)");
//	ps.setInt(1, 5);
//	ps.setDate(2, new java.sql.Date(System.currentTimeMillis()));
//	ps.setTimestamp(3, java.sql.Timestamp.from(java.time.Instant.now()));
//	System.out.println(ps.execute());
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from poshan");
	while(rs.next())
	{
		System.out.println(rs.getDate(2)+" "+rs.getDate(2).getClass());
		System.out.println(rs.getTimestamp(3).getTime()+" fdfjdfkl"+rs.getTimestamp(3).getClass());
	}
} catch (SQLException e) {
	System.out.println(e.getMessage());
}
     
      

   }
}

