package connection;
import java.util.*;
import java.sql.SQLException;
interface Ticket{
	public <T> List<Staff> searchstaff(String ele) throws SQLException;
}