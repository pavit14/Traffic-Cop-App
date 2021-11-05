package medical;

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
@WebServlet("/medicallogin")
public class Medicallogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Medicallogin() {
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MedicInterface ci=new Medicclass();
		String uname=request.getParameter("username");
		String pword=request.getParameter("password");
		String submitType=request.getParameter("submit");
		
		Medic c= ci.getMedic(uname,pword);
		//System.out.println(ci);
		if(submitType.contentEquals("login")&&(c!=null && c.getFullname()!=null)) {
			request.setAttribute("message",c.getFullname());
			HttpSession session=request.getSession();
			session.setAttribute("name",uname);			
			request.getRequestDispatcher("emergency1.jsp").forward(request, response);
		}else if(submitType.contentEquals("register")) {
			c.setFullname(request.getParameter("name"));
			c.setPassword(request.getParameter("pass"));
			c.setUsername(request.getParameter("user"));
			ci.insertMedic(c);
			if(c.stat==0) {
			request.setAttribute("successmessage","Registration Done Successfully");
			request.getRequestDispatcher("medicalindex.jsp").forward(request, response);}
			else {
				request.setAttribute("message","Username Already exists" );
				request.getRequestDispatcher("medicalindex.jsp").forward(request, response);
				
			}
		}else {
			request.setAttribute("message","Invalid username or password" );
			request.getRequestDispatcher("medicalindex.jsp").forward(request, response);
		}
	}

}
