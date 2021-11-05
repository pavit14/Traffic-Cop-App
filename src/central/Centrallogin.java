package central;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/centrallogin")
public class Centrallogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Centrallogin() {
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CentreInterface ci=new Centreclass();
		String uname=request.getParameter("username");
		String pword=request.getParameter("password");
		String submitType=request.getParameter("submit");
		
		Centre c= ci.getCentre(uname,pword);
		//System.out.println(ci);
		if(submitType.contentEquals("login")&&(c!=null && c.getFullname()!=null)) {
			request.setAttribute("message",c.getFullname());
			HttpSession session=request.getSession();
			session.setAttribute("name",uname);			
			request.getRequestDispatcher("soss.jsp").forward(request, response);
		}else if(submitType.contentEquals("register")) {
			c.setFullname(request.getParameter("name"));
			c.setPassword(request.getParameter("pass"));
			c.setUsername(request.getParameter("user"));
			ci.insertCentre(c);
			if(c.stat==0) {
			request.setAttribute("successmessage","Registration Done Successfully");
			request.getRequestDispatcher("centralindex.jsp").forward(request, response);}
			else {
				request.setAttribute("message","Username Already exists" );
				request.getRequestDispatcher("centralindex.jsp").forward(request, response);
				
			}
		}else {
			request.setAttribute("message","Invalid username or password" );
			request.getRequestDispatcher("centralindex.jsp").forward(request, response);
		}
	}

}
