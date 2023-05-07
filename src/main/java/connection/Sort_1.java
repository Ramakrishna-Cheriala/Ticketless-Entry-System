package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Sort_1 {
	public <T> List<Visitor_de> sort_de(Connection conn) throws SQLException
	{
		//Connection conn= Connection_Establish.Establish();
		//if(ele!=null) {
			List<Visitor_de> list123=new ArrayList<>();
			Statement st=conn.createStatement();
			st = conn.createStatement();
			try {
			ResultSet rs=st.executeQuery("select * from visitor");
			while(rs.next())
			{
				Visitor_de obj123=new Visitor_de();
				obj123.name=rs.getString("name");
				obj123.gender=rs.getString("gender");
				obj123.nationality=rs.getString("nationality");
				obj123.id=rs.getString("id");
				obj123.id_proof=rs.getString("id_proof");
				obj123.contact=rs.getString("contact");
				obj123.email=rs.getString("email");
				//obj123.mid=rs.getString("mid");
				obj123.tid=rs.getInt("tid");
				obj123.age=rs.getInt("age");
				//l1ist.add(obj);
				list123.add(obj123);
			}	
			}
			
		catch(SQLException e) {
			System.out.println(e);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		//int i = st.executeUpdate("drop view name");
		Connection_Establish.closeConnection(conn);
		return list123;
	}
//	else
//	{
//		System.out.println("Connection not Established");
//		return null;
//	}
}