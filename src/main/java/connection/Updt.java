package connection;
import java.sql.Connection;
import java.sql.*;
public class Updt {
	public int updt_de(Connection conn,String name,String age,String nationality,String gender,String id,String id_proof,String contact,String email,String tid) {
		int i=0;
		try {
		if(conn!=null)
		{
			Statement stmt=conn.createStatement();
			i=stmt.executeUpdate("update visitor set name='"+name+"',age='"+age+"',nationality='"+nationality+"',gender='"+gender+"',id='"+id+"',id_proof='"+id_proof+"',contact='"+contact+"',email='"+email+"' where tid='"+tid+"'");
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