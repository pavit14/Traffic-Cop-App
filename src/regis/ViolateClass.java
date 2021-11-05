package regis;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ViolateClass implements ViolateInterface {
	
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertViolate(Violate c) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into violations values(?,?,?,?,?,?,?,now(),?,?,?,?)");
			ps.setString(1, c.getV_name());
			ps.setString(2, c.getV_type());
			ps.setString(3, c.getLicense());
			ps.setString(4, c.getVtype());
			ps.setNString(5, c.getRegisno());
			ps.setString(6, c.getColor());
			ps.setString(7, c.getVehicletype());
			//ps.setString(8, now());
			ps.setString(8, c.getLat());
			ps.setString(9, c.getLon());
			ps.setString(10, c.getOffender());
			ps.setString(11, c.getComment());

			status=ps.executeUpdate();
	
		}catch(Exception e) {
			System.out.println(e);
			
		}
		return status;
	}

}
