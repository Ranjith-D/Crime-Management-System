<%-- 
    Document   : connect
    Created on : Mar 13, 2017, 7:38:53 PM
    Author     : sanju
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CFMS</title>
    </head>
    <body>
    <body>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sanjay", "root", "");
        
        %>
    </body> 
    </body>
</html>
