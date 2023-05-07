package connection;

import java.util.*;
//Visitor class
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
class Visitor{
	String name,nationality,gender,id,idproof,email;
	int tid,age,mid,contact;
}

public class Searching {
	public static <T> List<Visitor> searchpin(T ele) throws SQLException
	{
		Connection conn= Connection_Establish.Establish();
		if(conn!=null) {
			Statement st=conn.createStatement();
			List<Visitor> display=new ArrayList<>();
			ResultSet rs;
			try {
				int tid= Integer.parseInt((String) ele);
				rs=st.executeQuery("select * from visitor where (tid='"+tid+"');");
				Visitor v=new Visitor();
				v.tid=rs.getInt("tid");
				v.name=rs.getString("name");
				v.contact=rs.getInt("contact");
				v.age=rs.getInt("age");
				display.add(v);
			}
		catch(SQLException e) {
			System.out.println(e);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return display;
	}
	else
	{
		System.out.println("Connection not Established");
		return null;
	}
}
	public static void main(String[] args)
	{
		
	}
}
