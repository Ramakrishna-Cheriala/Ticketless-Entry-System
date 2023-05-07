package connection;
import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import com.google.zxing.NotFoundException;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
public class Dyn_QR {

	public static String s(String id1) {
		try {
			String out="";
			Connection_Establish obj_DBConnection = new Connection_Establish();
            Connection connection = obj_DBConnection.Establish();
            String query = "select * from visitor where contact='"+id1+"'";
            Statement stmt = null;
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
            	Dyn_QR.generate_qr(rs.getString("contact"),rs.getString("tid"),rs.getString("name"),rs.getString("mid"),rs.getString("date"),rs.getString("slot"),rs.getString("gender"),rs.getString("nationality"));
            	out="";
            }
            return out;
		} 
		
		catch (Exception e) {
			// TODO: handle exception
			return "-";
		}
		

	}
	public static void generate_qr(String image_name,String qrCodeData,String qrCodeData1,String qrCodeData2,String qrCodeData3,String qrCodeData4,String qrCodeData5,String qrCodeData6) throws NotFoundException {
        try {
            String filePath = "C:\\Users\\saisr\\eclipse-workspace\\QR_Tikcet\\src\\main\\webapp\\qr_imgs\\"+image_name+".png";
            String charset = "UTF-8"; // or "ISO-8859-1"
//            String charset1= "UTF-8";
            String qr="Ticket ID: "+qrCodeData + "\n Name:" + " "+ qrCodeData1+ "\n Mid:" + " "+ qrCodeData2+ "\n Date:" + " "+ qrCodeData3+ "\n Slot:" + " "+ qrCodeData4+ "\n Gender:" + " "+ qrCodeData5+ "\n Nationality:" + " "+ qrCodeData6;
            Map < EncodeHintType, ErrorCorrectionLevel > hintMap = new HashMap < EncodeHintType, ErrorCorrectionLevel > ();
            hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
            BitMatrix matrix = new MultiFormatWriter().encode(new String(qr.getBytes(charset), charset),BarcodeFormat.QR_CODE, 200, 200, hintMap);

            MatrixToImageWriter.writeToFile(matrix, filePath.substring(filePath
                .lastIndexOf('.') + 1), new File(filePath));

            System.out.println("QR Code image created successfully!");
        }
        catch (Exception e) {
            System.err.println(e);
        }
    }
//	public static void main(String args[]) {
//		Dyn_QR obj=new Dyn_QR();
//		System.out.println(Dyn_QR.s());
//	}

}