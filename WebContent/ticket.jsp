<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Issue Ticket</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="js/bootstrap.min.js" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Traffic Cop App</div>
      <div class="list-group list-group-flush">
        <a href="dash.jsp" class="list-group-item list-group-item-action bg-light">Register</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Issue Ticket</a>
        <a href="emergency.jsp" class="list-group-item list-group-item-action bg-light">Emergerncy</a>
     <a href="sos.jsp" class="list-group-item list-group-item-action bg-light">SOS</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-dark border-bottom">
      <button class="btn btn-black" id="menu-toggle"><span class="navbar-toggler-icon"></span></button>
      
        

     <!--    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
  <!--          <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>  -->
              <li class="nav-item">
              <a class="nav-link" href="logout.jsp"><font color=white>Logout</font></a>
            </li> 
 <!--        <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Home<span class="sr-only">(current)</span></a>
                <a class="dropdown-item" href="#">Logout</a>
               </div> 
            </li>   -->
          </ul>
      
      </nav>

      <div class="container-fluid">
        <h1 class="mt-4">Issuing ticket</h1>
        <table>
        <tr><td>Name</td><td>${name}</td></tr>
        <tr><td>Driving License No.</td><td>${l}</td></tr>
        <tr><td>FINE Details </td></tr>
        <tr><td></td><td></td></tr>
        <tr><td> ${des}</td><td>${str}</td></tr>
        <!-- 
        Connection con = null;
        static PreparedStatement ps;
        try {
        	con = DriverManager.getConnection(connectionUrl+database, userid, password);
        	ps=con.prepareStatement("select * from fine where ruleno=?");
        	ps.setString(1,%>${str});
        	ResultSet rs=ps.executeQuery();
        	resultSet.getString("fine"); %>
        	  </td></tr>
        	   
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>              -->
        </table>
        
        <p>Proceed to Payment :</p>
        <p> GPay to 9876543210  </p>
        <p> OR</p>
        <p> Swipe Card</p>
        
    </div>
    <!-- /#page-content-wrapper -->

  </div></div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
    