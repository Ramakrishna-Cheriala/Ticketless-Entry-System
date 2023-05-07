package connection;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
public class DeleteRecord {
	public int dele(Connection obj,String id) {
		
		if(id != null)
		{

		int staff_id = Integer.parseInt(id);
		try
		{
			Statement stmt1;
			stmt1=obj.createStatement();
			stmt1 = obj.createStatement();
			String sql = "call del('"+staff_id+"')";

		int i=stmt1.executeUpdate(sql);
		//i=1;
		return i;
		}
		catch(SQLException sqe)
		{
			System.out.println(sqe);
		//out.println(sqe);
			return 0;
		}
		}
		else
			return 0;
}
}