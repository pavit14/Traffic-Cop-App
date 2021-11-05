package regis;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider implements MyProvider {
	
static Connection con=null;
public static Connection getCon() {
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
	}catch(Exception e) {
		System.out.println(e);
	}
	return con;
}
}
