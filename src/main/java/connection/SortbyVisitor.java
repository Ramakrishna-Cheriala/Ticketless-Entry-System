package connection;
import java.sql.Connection;
import java.util.Comparator;
//class Visitor_det{
//	public String name,gender,nationality,id,id_proof,contact,email;
//	public int tid,age;
//	public String toString() {
//		return this.name+" "+this.gender+" "+this.nationality+" "+this.id+" "+this.id_proof+" "+this.contact+" "+this.email+" "+this.tid+" "+this.age;
//	}
//}
public class SortbyVisitor implements Comparator<Visitor_de>  {
	//static 
	//@Override
	
	public int compare(Visitor_de a1,Visitor_de a2) {
		return a1.name.compareTo(a2.name);
	}
}