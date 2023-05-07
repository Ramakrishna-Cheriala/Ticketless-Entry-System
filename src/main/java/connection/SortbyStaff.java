package connection;

import java.util.Comparator;

public class SortbyStaff implements Comparator<Staff>  {
	
	public int compare(Staff a1,Staff a2) {
		return a1.staff_name.compareTo(a2.staff_name);

	}
}