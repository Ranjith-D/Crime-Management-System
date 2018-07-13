<%-- 
    Document   : AdminLogin
    Created on : Mar 14, 2017, 5:03:23 AM
    Author     : sanju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CFMS</title>
         <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <style>
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
                             footer {
                                background-color: #2d2d30;
                                color: #f5f5f5;
                                padding: 32px;
                            }
                            footer a {
                                color: #f5f5f5;
                            }
                            footer a:hover {
                                color: #777;
                                text-decoration: none;
                            }  
            </style>
    </head>
    <body>
        
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
                      <li><a href="index.jsp">HOME</a></li>
                      <li><a href="index.jsp#cfms  ">ABOUT</a></li>
                      <li><a href="index.jsp#wanted">MOST WANTED</a></li>
                      <li><a href="index.jsp#contact">CONTACT</a></li>
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
        
        <br><br>
        <div class="container">
            <div class="row"> 
                <h2>Login here</h2><br>
            </div>
            <div>
                <form action="admin.jsp">
                  <div class="form-group">
                    <label for="uname">User name</label>
                    <input type="uname" class="form-control" id="uname" placeholder="Enter user name">
                  </div>
                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                  </div>
                  
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
         </div>
        <!-- Footer -->
        <footer class="text-center">
            
        </footer>
       
    </body>
</html>
