package medical;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class Medicclass implements MedicInterface{
	
	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertMedic(Medic c) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into medicalusers values(?,?,?)");
			ps.setString(1,c.getFullname());
			ps.setString(2, c.getUsername());
			ps.setString(3, c.getPassword());
			status=ps.executeUpdate();
	
		}catch(Exception e) {
			c.stat=1;
			System.out.println(e);
			
		}
		return status;
	}

	@Override
	public Medic getMedic(String username, String password) {
		// TODO Auto-generated method stub
		Medic c=new Medic();
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("select * from medicalusers where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c.setFullname(rs.getString(1));
				c.setUsername(rs.getString(2));
				c.setPassword(rs.getString(3));
				System.out.println(rs.getString(1)+" "+rs.getString(2));
			}
			
		}catch(Exception e)
		{
			
			System.out.println(e);
		}
		return c;
	}


}
