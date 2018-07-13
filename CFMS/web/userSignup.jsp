<%-- 
    Document   : AdminLogin
    Created on : Mar 14, 2017, 5:03:23 AM
    Author     : sanju
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
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
    <body >
       
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
                <h2>Signup here</h2><br>
            </div>
            <form action="" method="post" >
               <div class="form-group">
                  <label for="exampleInputUsername1">User name</label>
                  <input type="text" class="form-control" name="uname" id="exampleInputUser" aria-describedby="emailHelp" placeholder="Enter user name">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="pwd" id="exampleInputPassword1" placeholder="Password">
                </div>
               <div class="form-group">
                  <label for="exampleInputPhone">Phone number</label>
                  <input type="phone" class="form-control" name="phno" id="exampleInputPhone1" aria-describedby="emailHelp" placeholder="Enter phone number">
                
                </div>
                <fieldset class="form-group">
                  <legend>Gender</legend>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios1" value="male" >
                      Male
                    </label>
                  </div>
                  <div class="form-check">
                  <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios2" value="female">
                     Female
                    </label>
                  </div>
                  <div class="form-check disabled">
                  <label class="form-check-label">
                      <input type="radio" class="form-check-input" name="gnd" id="optionsRadios3" value="others" >
                     Others
                    </label>
                  </div>
                </fieldset>
             
                <div class="form-group">
                  <label for="exampleTextarea">Enter complete address</label>
                  <textarea class="form-control" name="address" id="exampleTextarea" rows="3"></textarea>
                </div>
                 <div class="form-group">
                  <label for="exampleInputPhone">Pincode</label>
                  <input type="phone" class="form-control" name="pin" id="exampleInputPhone1" aria-describedby="emailHelp" placeholder="Enter pincode">
                
                </div>
               
                
                <button type="submit" class="btn btn-primary"  >Submit</button>
               
         </form>
            <br><p>Have an account? Login here</p>
            <a href="userLogin.jsp"> <button class="btn btn-block">Login</button></a>
            <br><br>
            
            
        
               <%
                   if("post".equalsIgnoreCase(request.getMethod())){
                       String uname=request.getParameter("uname");
                       String email=request.getParameter("email");
                       String pwd=request.getParameter("pwd");
                       String phno=request.getParameter("phno");
                       String gnd=request.getParameter("gnd");
                       String address=request.getParameter("address");
                       String pin=request.getParameter("pin");
                       PreparedStatement ps=con.prepareStatement("select * from user where email=?");
                       ps.setString(1, email);
                       ResultSet rs=ps.executeQuery();
                       int row=0;
                       while(rs.next()){
                           row++;
                        }
                       if(row!=0)
                       {
                           %>
                           <p class="text-danger">Record exists!</p>
                           <%
                              
                       }
                       else
                       {
                                String insert="insert into user(name,email,password,phone,gender,address,pincode)values(?,?,?,?,?,?,?)";
                                PreparedStatement ps1=con.prepareStatement(insert);
                                ps1.setString(1, uname);
                                ps1.setString(2, email);
                                ps1.setString(3, pwd);
                                ps1.setString(4, phno);
                                ps1.setString(5, gnd);
                                ps1.setString(6, address);
                                ps1.setString(7, pin);
                                int done=ps1.executeUpdate();
                                if(done>0){
                                         %>
                                         <p class="text-success">You are Signed up!</p>
                                         <%
                                 }
                                 else{
                                         %>
                                         <p class="text-danger">Error!! Could not register..</p>
                                         <%
                                 }
                        }   
                   } 
             %>
       </div>
        
        <footer class="text-center">
            
        </footer>
       
    </body>
</html>
