import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
import java.sql.*;  
    
@WebServlet("/central")
public class Central extends HttpServlet  

{
	
	private static final long serialVersionUID = 1L;
	   
    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");   
         out.println(" <html lang=\"en\">\r\n" + 
         		"<head>\r\n" + 
         		"\r\n" + 
         		"  <meta charset=\"utf-8\">\r\n" + 
         		"  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n" + 
         		"  <meta name=\"description\" content=\"\">\r\n" + 
         		"  <meta name=\"author\" content=\"\">\r\n" + 
         		"\r\n" + 
         		"  <title>Central Dashboard</title>\r\n" + 
         		"\r\n" + 
         		"  <!-- Bootstrap core CSS -->\r\n" + 
         		"  <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" + 
         		"  <link href=\"js/bootstrap.min.js\" rel=\"stylesheet\">\r\n" + 
         		"  <!-- Custom styles for this template -->\r\n" + 
         		"  <link href=\"css/simple-sidebar.css\" rel=\"stylesheet\">\r\n" + 
         		"  \r\n" + 
         		"<style type=\"text/css\">\r\n" + 
         		"#customers {\r\n" + 
         		"  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n" + 
         		"  border-collapse: collapse;\r\n" + 
         		"  width: 100%;\r\n" + 
         		"}\r\n" + 
         		"\r\n" + 
         		"#customers td, #customers th {\r\n" + 
         		"  border: 1px solid #ddd;\r\n" + 
         		"  padding: 8px;\r\n" + 
         		"}\r\n" + 
         		"\r\n" + 
         		"#customers tr:nth-child(even){background-color: #f2f2f2;}\r\n" + 
         		"\r\n" + 
         		"#customers tr:hover {background-color: #ddd;}\r\n" + 
         		"\r\n" + 
         		"#customers th {\r\n" + 
         		"  padding-top: 12px;\r\n" + 
         		"  padding-bottom: 12px;\r\n" + 
         		"  text-align: left;\r\n" + 
         		"  background-color: #008080;\r\n" + 
         		"  color: white;\r\n" + 
         		"</style>\r\n" + 
         		"</head>\r\n" + 
         		"\r\n" + 
         		"<body>\r\n" + 
         		"\r\n" + 
         		"  <div class=\"d-flex\" id=\"wrapper\">\r\n" + 
         		"\r\n" + 
         		"    <!-- Sidebar -->\r\n" + 
         		"    <div class=\"bg-light border-right\" id=\"sidebar-wrapper\">\r\n" + 
         		"      <div class=\"sidebar-heading\">Traffic Central team </div>\r\n" + 
         		"      <div class=\"list-group list-group-flush\">\r\n" + 
         		"        <a href=\"central\" class=\"list-group-item list-group-item-action bg-light\">Violations</a>\r\n" + 
         		"        <a href=\"fine\" class=\"list-group-item list-group-item-action bg-light\">Fine</a>\r\n" + 
         		"        <a href=\"sosdb\" class=\"list-group-item list-group-item-action bg-light\">SOS Details</a>\r\n" + 
         		"      </div>\r\n" + 
         		"    </div>\r\n" + 
         		"    <!-- /#sidebar-wrapper -->\r\n" + 
         		"\r\n" + 
         		"       <!-- Page Content -->\r\n" + 
         		"    <div id=\"page-content-wrapper\">\r\n" + 
         		"\r\n" + 
         		"      <nav class=\"navbar navbar-expand-lg navbar-light bg-dark border-bottom\">\r\n" + 
         		"      <button class=\"btn btn-black\" id=\"menu-toggle\"><span class=\"navbar-toggler-icon\"></span></button>\r\n" + 
         		"      \r\n" + 
         		"        \r\n" + 
         		"\r\n" + 
         		"     <!--    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n" + 
         		"          <span class=\"navbar-toggler-icon\"></span>\r\n" + 
         		"        </button>\r\n" + 
         		"\r\n" + 
         		"        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\"> -->\r\n" + 
         		"          <ul class=\"navbar-nav ml-auto mt-2 mt-lg-0\">\r\n" + 
         		"  <!--          <li class=\"nav-item active\">\r\n" + 
         		"              <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>\r\n" + 
         		"            </li>  -->\r\n" + 
         		"              <li class=\"nav-item\">\r\n" + 
         		"              <a class=\"nav-link\" href=\"centrallogout.jsp\"><font color=white>Logout</font></a>\r\n" + 
         		"            </li> \r\n" + 
         		" <!--        <li class=\"nav-item dropdown\">\r\n" + 
         		"              <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n" + 
         		"                Dropdown\r\n" + 
         		"              </a>\r\n" + 
         		"              <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdown\">\r\n" + 
         		"                <a class=\"dropdown-item\" href=\"#\">Home<span class=\"sr-only\">(current)</span></a>\r\n" + 
         		"                <a class=\"dropdown-item\" href=\"#\">Logout</a>\r\n" + 
         		"               </div> \r\n" + 
         		"            </li>   -->\r\n" + 
         		"          </ul>\r\n" + 
         		"      \r\n" + 
         		"      </nav>\r\n" + 
         		"\r\n" + 
         		"\r\n" + 
         		"\r\n" + 
         		"      <div class=\"container-fluid\">\r\n" + 
         		"   <div class=\"scrollmenu\">");
         try 
         {  
        	 Class.forName("com.mysql.jdbc.Driver");
     		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3300/vprobd","root","root");
               
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from violations order by dt desc");  
             out.println("<h1>Violation Details</h1>\r\n" + 
             		"<table border=\"1\" id=\"customers\">\r\n" + 
             		"<tr>\r\n" + 
             		"<th>Date and time</th>\r\n" + 
             		"<th>Violator's name</th>\r\n" + 
             		"<th>Violation type</th>\r\n" + 
             		"<th>Driving License</th>\r\n" + 
             		"<th>Type Of Vehicle</th>\r\n" + 
             		"<th>Reg.no</th>\r\n" + 
             		"<th>Color</th>\r\n" + 
             		"<th>Private/Taxi</th>\r\n" + 
             		"<th>Latitude</th>\r\n" + 
             		"<th>Longitude</th>\r\n" + 
             		"<th>Repeated Offender</th>\r\n" + 
             		"<th>Comment</th>\r\n" + 
             		"</tr>");  
             //out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
             while (rs.next()) 
             {  
            	 String m = rs.getString("dt");  
            	 String n= rs.getString("name"); 
                 String b= rs.getString("type");  
                 String v = rs.getString("license");
                 String c = rs.getString("vtype");  
                 String x = rs.getString("registration_no");  
                 String z = rs.getString("vcolor");  
                 String a = rs.getString("vehicle");  
                 String s = rs.getString("loc_lat");
                 String d = rs.getString("loc_long");  
                 String f = rs.getString("offender");  
                 String g = rs.getString("comment");  
                  
                    
                 out.println("<tr><td>" + m + "</td><td>" + n + "</td><td>" + b + "</td><td>" + v + "</td><td>" + c + "</td><td>" + x + "</td><td>" + z + "</td><td>" + a + "</td><td>" + s + "</td><td>" + d + "</td><td>" + f + "</td><td>" + g +"</td></tr>");   
             }  
             
            
             out.println("</table>\r\n" + 
             		"        \r\n" + 
             		"    </div>\r\n" + "</div>\r\n"+
             		"    <!-- /#page-content-wrapper -->\r\n" + 
             		"\r\n" + 
             		"  </div></div>\r\n" + 
             		"  <!-- /#wrapper -->\r\n" + 
             		"\r\n" + 
             		"  <!-- Bootstrap core JavaScript -->\r\n" + 
             		"  <script src=\"js/jquery.min.js\"></script>\r\n" + 
             		"  <script src=\"js/bootstrap.bundle.min.js\"></script>\r\n" + 
             		"\r\n" + 
             		"  <!-- Menu Toggle Script -->\r\n" + 
             		"  <script>\r\n" + 
             		"    $(\"#menu-toggle\").click(function(e) {\r\n" + 
             		"      e.preventDefault();\r\n" + 
             		"      $(\"#wrapper\").toggleClass(\"toggled\");\r\n" + 
             		"    });\r\n" + 
             		"    \r\n" + 
             		"    setTimeout(function(){\r\n" + 
             		" 	   window.location.reload(1);\r\n" + 
             		" 	}, 15000);\r\n" + 
             		"  </script>");
            
             out.println("</html></body>");  
             con.close();  
            }  
             catch (Exception e) 
            {  
             out.println("error");  
         }  
     }  
 }  
