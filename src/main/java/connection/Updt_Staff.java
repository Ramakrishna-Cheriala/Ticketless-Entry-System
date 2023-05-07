package connection;
import java.sql.Connection;
import java.sql.*;
public class Updt_Staff {
	public int updt_sde(Connection conn,String staff_name,String designation,String street,String city,String state,String hno,String mobile,String staff_id,String zip_code) {
		int i=0;
		try {
		if(conn!=null)
		{
			Statement stmt=conn.createStatement();
			
			i=stmt.executeUpdate("update staff set staff_name='"+staff_name+"',designation='"+designation+"',mobile='"+mobile+"',hno='"+hno+"' where staff_id='"+staff_id+"'");
			stmt.executeUpdate("update address set zip_code='"+zip_code+"',street='"+street+"',city='"+city+"',state='"+state+"' where hno='"+hno+"'");
			//out.print("Updated successfully");
			Connection_Establish.closeConnection(conn);
			return i;
		}
		else {
			return i;
		}
			//out.print("Connection Not Established");
	}
	catch(SQLException e) {
		return 0;
	}

}
}