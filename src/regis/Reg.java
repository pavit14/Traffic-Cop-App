package regis;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Login
 */
@WebServlet("/reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Reg() {
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ViolateInterface ci=new ViolateClass();
		//Cop c=ci.getCop();
		
		Violate c=new Violate();
		String name=request.getParameter("name");
			c.setV_name(name);
			String s=request.getParameter("box");
			String t=s.substring(0,2);
			String w=s.substring(3);
			c.setV_type(request.getParameter("box"));
			String l=request.getParameter("driving");
			c.setLicense(l);
			c.setVtype(request.getParameter("optradio"));
			c.setRegisno(request.getParameter("regno"));
			c.setColor(request.getParameter("color"));
			c.setVehicletype(request.getParameter("optradio1"));
			c.setLat(request.getParameter("lat"));
			c.setLon(request.getParameter("long"));
			c.setOffender(request.getParameter("off"));
			c.setComment(request.getParameter("comment"));
			ci.insertViolate(c);
			request.setAttribute("name",name);
			request.setAttribute("l",l);
			
			String driver = "com.mysql.jdbc.Driver";
			String connectionUrl = "jdbc:mysql://localhost:3300/";
			String database = "vprobd";
			String userid = "root";
			String password = "root";
			try {
			Class.forName(driver);
			
			
			} catch (ClassNotFoundException e) {
			e.printStackTrace();
			}
			Connection con = null;
	        PreparedStatement ps;
			
			//for(int i=0;i<sports.length;i++)
			//	{String p=sports[0]+sports[1];
			//	String b=sports[i].substring(3);
				
				
				try {
					String d= "a";
					con = DriverManager.getConnection(connectionUrl+database, userid, password);
					ps=con.prepareStatement("select * from fine where ruleno=? ");
		        	ps.setString(1,t);
					ResultSet rs=ps.executeQuery();
					while(rs.next())
	        	{d=rs.getString("rs");
	        	request.setAttribute("des",w);
	        	request.setAttribute("str",d);}
	        	ps=con.prepareStatement("insert into finecollected values(now(),?,?,?,?)");
	        	ps.setString(1,name);
	        	ps.setString(2,l);
	        	ps.setString(3,w);
	        	ps.setString(4, d);
	        	ps.executeUpdate();
	        			
				
			con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
			request.getRequestDispatcher("ticket.jsp").forward(request, response);
			
	}

}

