package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Sort_2 {
	public <T> List<Staff> sort_sde(Connection conn) throws SQLException
	{
			List<Staff> list123=new ArrayList<>();
			Statement st=conn.createStatement();
			st = conn.createStatement();
			try {
			ResultSet rs=st.executeQuery("select * from staff");
			while(rs.next())
			{
				Staff obj123=new Staff();
				obj123.staff_name=rs.getString("staff_name");
				obj123.designation=rs.getString("designation");
				obj123.hno=rs.getString("hno");
				obj123.staff_id=rs.getLong("staff_id");
				obj123.mobile=rs.getLong("mobile");
				list123.add(obj123);
			}	
			}
			
		catch(SQLException e) {
			System.out.println(e);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		Connection_Establish.closeConnection(conn);
		return list123;
	}

}