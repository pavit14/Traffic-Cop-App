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

  <title></title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="js/bootstrap.min.js" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
<style type="text/css">
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #008080;
  color: white;
</style>
</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Traffic Central team </div>
      <div class="list-group list-group-flush">
        <a href="central.jsp" class="list-group-item list-group-item-action bg-light">Violations</a>
        <a href="fine.jsp" class="list-group-item list-group-item-action bg-light">Fine</a>
        <a href="sosdb.jsp" class="list-group-item list-group-item-action bg-light">SOS Details</a>
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
              <a class="nav-link" href="centrallogout.jsp"><font color=white>Logout</font></a>
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
   
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String id = request.getParameter("userid");
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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps;
%>


<h1>SOS Details</h1>
<table border="1" id="customers">
<tr>
<th>Date and time</th>
<th>Reason</th>
<th>Latitude</th>
<th>Longitude</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
ps=connection.prepareStatement("select * from sos order by date desc");
//String sql ="select * from violations order by dt desc";
//resultSet = statement.executeQuery(sql);
resultSet=ps.executeQuery();
while(resultSet.next()){
%>
<tr>
<% //System.out.println("1"); %>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("reason") %></td>
<td><%=resultSet.getString("lat") %></td>
<td><%=resultSet.getString("lon") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
	//System.out.println("1");
e.printStackTrace();
}
%>
</table>
        
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
    
    setTimeout(function(){
 	   window.location.reload(1);
 	}, 5000);
  </script>

</body>

</html>
    