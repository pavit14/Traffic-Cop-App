package sos;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class Sosclass implements SosInterface {
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertSos(Sos c) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into sos values(now(),?,?,?)");
			ps.setString(1, c.getType());
			ps.setString(2, c.getLat());
			ps.setNString(3, c.getLon());
			

			status=ps.executeUpdate();
	
		}catch(Exception e) {
			System.out.println(e);
			
		}
		return status;
	}

}
