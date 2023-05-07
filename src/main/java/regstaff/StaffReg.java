package regstaff;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.sql.*;
import java.sql.Statement;
import java.util.*;
//import java.lang.*;
import java.util.ArrayList;

public class StaffReg {
	public ArrayList<Object> arr = new ArrayList<Object>();
	public String staff()
	{
		try
		{
			if(arr.get(3)!=null && arr.get(5)!=null && arr.get(6)!=null)
			{
				 try
				 {
					 Class.forName("com.mysql.cj.jdbc.Driver");
					 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketless", "root", "Sreyas@2002");
					 //return conn;
					 Statement st=conn.createStatement();
					 st.executeQuery("insert into staff(staff_name,mobile,designation,zip_code) values('"+arr.get(0)+"','"+arr.get(1)+"','"+arr.get(2)+"','"+arr.get(3)+"')");
					 st.executeQuery("insert into address(zip_code,street,city,state) values('"+arr.get(3)+"','"+arr.get(4)+"','"+arr.get(5)+"','"+arr.get(6)+"')");
						return "yes";
				 }
				 catch(ClassNotFoundException ex)
				 {
                        return "no";
//					 	System.out.println(ex);
//					 	ex.printStackTrace();
				 }
//					Class.forName("com.mysql.cj.jdbc.Driver");
//					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketless", "root", "Sreyas@2002");
					
					
					//st = conn.createStatement();
					
			}
			else
			{
				return "no";
			}
		}
		catch(SQLException e)
		{
			return "no";
		}
		catch(Exception e)
		{
			return "no";
		}
	}
}