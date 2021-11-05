package emergency;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Emerclass implements EmerInterface {
	
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertEmer(Emer c) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into emergency values(now(),?,?,?,?,?)");
			ps.setString(1, c.getType());
			ps.setString(2, c.getNo());
			ps.setString(3, c.getOff());
			ps.setString(4, c.getLat());
			ps.setNString(5, c.getLon());
			

			status=ps.executeUpdate();
	
		}catch(Exception e) {
			System.out.println(e);
			
		}
		return status;
	}

}
