package emergency;

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
@WebServlet("/medical")
public class Medical extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Medical() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	EmerInterface ci=new Emerclass();		
		Emer c=new Emer();
		c.setType(request.getParameter("type"));
		c.setNo(request.getParameter("no"));
		c.setOff(request.getParameter("off"));
		c.setLat(request.getParameter("lat"));
		c.setLon(request.getParameter("long"));
		ci.insertEmer(c);
	

	request.getRequestDispatcher("dash.jsp").forward(request, response);

}	
}	