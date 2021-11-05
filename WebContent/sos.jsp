<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SOS</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="js/bootstrap.min.js" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
  <script>
  
  function getlocation() {
      if(navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
              var x = position.coords.latitude;
              var y = position.coords.longitude;
              
              var q=document.getElementById("lat");
              var w=document.getElementById("long");
              q.value=x;
              w.value=y;
          });
      } else {
          alert("Sorry, your browser does not support HTML5 geolocation.");
      }
  }

</script>

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
        <h4 class ="mt-4">Call for SOS </h4>
			 <div class="login-form" >
               <form action="sossubmit" method="post">
                  <div class="form-group">
                     <label>Reason</label>
                     <input type="text" class="form-control" name="type" required="required">
                  </div>
                  <div class="form-group">
                  <table>
                  <tr> <td><input class="btn btn-secondary" type="button" onclick="getlocation()" value="Get location"> </td></tr><tr>
                  <td><label>Latitude</label></td>
                   <td>  <input type="text" name="lat" id="lat"></td></tr>
                    <tr><td> <label>Longitude</label></td>
                    <td> <input type="text" name="long" id="long" ></td></tr>
                    </table>
                  </div>
                  <div class="form-group">
				  <button type="submit" > Submit </button>
				  </div>
                  
                  </form>
                  </div>
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
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
    