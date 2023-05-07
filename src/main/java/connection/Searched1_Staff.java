package connection;
import java.util.*;
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
public class Searched1_Staff {
	public <T> List<Staff> search(T ele) throws SQLException,NumberFormatException{
		String str=(String)ele;
		int flag=0;
		for (char ch : str.toCharArray()) {
	        if(!((int)ch>=48 && (int)ch<=57)){
	        	flag=1;
	        	break;
	        }
	    }
		if(flag==0) {
			return Searched1_Staff.searchbymobile(str);
		}
		else {
			return Searched1_Staff.searchbyhno(str);
		}
	}
	public static List<Staff> searchbymobile(String str) throws SQLException{
		List<Staff> result = new ArrayList<>();	
		try {
			Connection conn = Connection_Establish.Establish();
			Statement st=conn.createStatement();
			ResultSet rs;
			long mob = Long.parseLong(str);
			System.out.println(mob);
			rs=st.executeQuery("select * from staff where (mobile='"+mob+"');");
			while(rs.next()) {
			Staff s=new Staff();
			s.staff_id=rs.getLong("staff_id");
			s.staff_name=rs.getString("staff_name");
			s.mobile=rs.getLong("mobile");
			s.designation=rs.getString("designation");
			s.hno=rs.getString("hno");
			result.add(s);
			}
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
	public static List<Staff> searchbyhno(String str) throws SQLException{
		List<Staff> result=new ArrayList<>();
		try {
		Connection conn = Connection_Establish.Establish();
		Statement st=conn.createStatement();
		ResultSet rs;
		String id1=str;
		rs=st.executeQuery("select * from staff where (hno='"+id1+"');");
	    while(rs.next()) {
			Staff s=new Staff();
			s.staff_id=rs.getLong("staff_id");
			s.staff_name=rs.getString("staff_name");
			s.mobile=rs.getLong("mobile");
			s.designation=rs.getString("designation");
			s.hno=rs.getString("hno");
			result.add(s);
	    }
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
}