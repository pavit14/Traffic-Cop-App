package sos;

import java.io.IOException;

//import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Medical
 */
@WebServlet("/sossubmit")
public class Sossubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sossubmit() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	SosInterface ci=new Sosclass();		
		Sos c=new Sos();
		c.setType(request.getParameter("type"));
		c.setLat(request.getParameter("lat"));
		c.setLon(request.getParameter("long"));
		ci.insertSos(c);
	request.getRequestDispatcher("dash.jsp").forward(request, response);

}	
}	