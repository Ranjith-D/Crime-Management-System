<%-- 
    Document   : index
    Created on : Mar 13, 2017, 7:25:39 AM
    Author     : sanju
--%>


<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>CFMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .news1  {
	  
  }
  .person:hover {
      border-color: #f1f1f1;
  }
 
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
 
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">CFMS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#cfms">ABOUT</a></li>
        <li><a href="#wanted">MOST WANTED</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="AdminLogin.jsp">Admin</a></li>
            <li><a href="userLogin.jsp">User</a></li>
            
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
    <%
                        PreparedStatement ps = con.prepareStatement("select * from hotnews");
                        ResultSet rs=ps.executeQuery();
                        ResultSetMetaData rsmd = rs.getMetaData();
                        int row=0;
                        while(rs.next()){
                            row++;
                        }
                        rs.previous();
                        %>
                        
<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <%
                      for(int i=1;i<=row;i++)
                      {
                          %>
                  
                         <li data-target="#myCarousel" data-slide-to="<%=i%>"></li>
                         <%
                      }
                      %>
		  
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox" >
                    
		  <div class="item active" >
		  
                      <img src="display.jsp?id=<%=rs.getString("id")%>"  style="width:1200px;height:700px;" >
			<div class="carousel-caption">
			  <h3>New York</h3>
			     <a href="Fullnews.jsp?id=<%=rs.getString("id")%>"><p><%=rs.getString("caption") %></p></a>
			</div>      
			
		  </div>
                   <%
                       while(rs.previous())
                       {
                           if(rs.getString("id").equals("id"))
                           {
                              break;
                           }
                           else
                           {
                               %>
                               <div class="item">
                                  <img src="display.jsp?id=<%=rs.getString("id")%>" style="width:1200px;height:700px;" >
                                  <div class="carousel-caption">
                                    <h3>Chicago</h3>
                                    <a href="Fullnews.jsp?id=<%=rs.getString("id")%>"><p><%=rs.getString("caption") %></p></a>
                                  </div>      
                            </div>
                               <%
                           }
                       }
                       %>
                       

                            
		</div>
		  

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		  <span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		  <span class="sr-only">Next</span>
		</a>
	</div>
</div>
<!-- Container (The Band Section) -->
<div id="cfms" class="container text-center">
  <h3>CFMS</h3>
  <p><em>We love music!</em></p>
  <p>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <br>
  
	
</div>

<!-- Container (TOUR Section) -->
<div id="wanted" class="bg-1">
  <div class="container">
   
    
       
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="C:\Users\sanju\Pictures\Saved Pictures\2.jpg" alt="Paris" width="400" height="300">
          <p><strong>Paris</strong></p>
          <p>Friday 27 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="C:\Users\sanju\Pictures\Saved Pictures\2.jpg" alt="New York" width="400" height="300">
          <p><strong>New York</strong></p>
          <p>Saturday 28 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="C:\Users\sanju\Pictures\Saved Pictures\2.jpg" alt="San Francisco" width="400" height="300">
             <p><strong>San Francisco</strong></p>
          <p>Sunday 29 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
              <input type="number" class="form-control" id="psw" placeholder="How many?">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Pay 
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  <br>


  
</div>

<!-- Add Google Maps -->
<div id="googleMap"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(12.9655074, 77.5687449);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiEhDkHmn7OGQc4op2MGoS3a8IxdEY7Bc&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
