<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  

  <title>Violations</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="js/bootstrap.min.js" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <style>
  


</style>
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
      <div class="list-group list-group-flush " >
      
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
              <a class="nav-link" href="logout.jsp"><font color=white> Logout </font></a>
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
      
              <h1 class="mt-4">Welcome ${message}!</h1>
        <h4 class ="mt-4">Register a traffic violation </h4>
			 <div class="login-form" >
               <form action="reg" method="post">
                  <div class="form-group">
                     <label>Violators Name</label> 
                     <input type="text" class="form-control" placeholder="Enter the Violation Name" name="name" required="required">
                  </div>
                  <div class="form-group">
                     <label>Violation Type</label>
                     	<div class="radio">
  							<label> <input type="radio" name="box" value="01 Drunk driving/riding" >Drunk driving/riding</label>
						</div>
						<div class="radio">
  							<label> <input type="radio" name="box" value="02 General traffic rule violations"> General traffic rule violations </label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="03 Violations of road rules and regulations">Violations of road rules and regulations</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="04 Travelling without tickets">Travelling without tickets</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="05 Driving vehicle without valid registration certificate">Driving vehicle without valid registration certificate</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="06 Disobeying orders of traffic police">Disobeying orders of traffic police</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="07 Driving/riding without licence">Driving/riding without licence</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="08 Driving vehicles after cancellation of Drivers License">Driving vehicles after cancellation of Drivers License</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="09 Driving an oversized vehicle">Driving an oversized vehicle</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="10 Riding without a helmet">Riding without a helmet</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="11 Driving without insurance">Driving without insurance</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="12 Rash and negligent driving">Rash and negligent driving</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="13 Over-boarding on 2 wheelers">Over-boarding on 2 wheelers</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="14 Violations by juveniles">Violations by juveniles</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="15 Driving without seat-belt">Driving without seat-belts</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="16 Violating license conditions">Violating license conditions</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="17 Driving without a valid permit">Driving without a valid permit</label>
						</div>
						<div class="radio">
  							<label> <input type="radio" name="box" value="18 Breaching the regulations of a learners licence">Breaching the regulations of a learners licence</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="19 Over-speeding">Over-speeding</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="20 Excessive over-speeding">Excessive over-speeding</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="21 Driving in a reckless manner that is harmful to public">Driving in a reckless manner that is harmful to public</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="22 Driving despite being declared physically or mentally unfit">Driving despite being declared physically or mentally unfit</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="23 Using fuel which is illegal or harmful">Using fuel which is illegal or harmful</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="24 Violating noise control standards">Violating noise control standards</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="25 Violating air pollution control norms">Violating air pollution control norms</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="26 Driving without paying road tax">Driving without paying road tax</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="27 Driving in a No Entry zone">Driving in a No Entry zone.</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="28 Disobeying instruction of the authorities">Disobeying instruction of the authorities</label>
						</div>
						<div class="radio">
  							<label><input type="radio" name="box" value="29 Driving in a pedestrian zone">Driving in a pedestrian zone</label>
						</div>						
                  </div>
                  <div class="form-group">
                     <label>Driving License</label>
                     <input type="text" class="form-control" placeholder="Enter the Driving License" name="driving" required="required">
                  </div>
                  Vehicle Details:
                  <div class="form-group">
                     <label>Vehicle Type </label>
                     <label class="radio-inline"><input type="radio" name="optradio" value="Car" checked>Car</label>
					 <label class="radio-inline"><input type="radio" name="optradio" value="Bike">Bike</label>
                     <label class="radio-inline"><input type="radio" name="optradio" value="Lorry">Lorry</label>
                  </div>
                  <div class="form-group">
                     <label>Registration Number</label>
                     <input type="text" class="form-control" placeholder="Enter the Vehicle Number" name="regno" required="required">
                  </div>
                  <div class="form-group">
                     <label>Color</label>
                     <input type="text" class="form-control" placeholder="Enter the Color" name="color" required="required">
                  </div>
                  <div class="form-group">
                     <label>Type of Vehicle</label>
                     <label class="radio"><input type="radio" name="optradio1" value="Private" checked>Private Vehicle</label>
					 <label class="radio"><input type="radio" name="optradio1" value="Taxi">Taxi</label>
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
                     <label>Repeated Offender</label>
                     <label class="radio"><input type="radio" name="off" value="Yes" checked>Yes</label>
					 <label class="radio"><input type="radio" name="off" value="No">No</label>
                  </div>
                  <div class="form-group">
  					  <label for="comment">Comment</label>
  					  <textarea class="form-control" rows="1" name="comment"></textarea>
				  </div>
				  <div class="form-group">
				  <button type="submit" > Check-In to Issue Ticket</button>
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
    