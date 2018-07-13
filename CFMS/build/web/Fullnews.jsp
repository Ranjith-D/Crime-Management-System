<%-- 
    Document   : Fullnews
    Created on : Mar 13, 2017, 9:26:05 PM
    Author     : sanju
--%>

<%@page import="java.sql.ResultSet"%>
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
    </head>
    <style>
         footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
      margin-top: 20px;
      margin-left:50px;
      margin-right:50px; 
      margin-bottom: 30px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 10;
  }
    </style>
    <body>
        <div class="container">
            <%
                String id=request.getParameter("id");
                PreparedStatement ps=con.prepareStatement("select * from hotnews where id=? ");
                 ps.setString(1, id);
                ResultSet rs= ps.executeQuery();
                rs.next();
                %>
                <div class="row">
                    <img src="display.jsp?id=<%=id%>" style="width:1200px;height:700px;">
                </div>
                <div class="row">
                    <p><%=rs.getString("Description") %></p>
                </div>
        </div>
            <footer class="text-center">
                <br><br>

            </footer>       
    </body>
</html>
