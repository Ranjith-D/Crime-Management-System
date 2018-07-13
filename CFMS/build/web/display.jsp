<%-- 
    Document   : diplay
    Created on : Mar 13, 2017, 8:03:15 PM
    Author     : sanju
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <body>
        <%
              String id=request.getParameter("id");
              Blob b=null;
              PreparedStatement ps=con.prepareStatement("select * from hotnews where id=? ");
              ps.setString(1, id);
              ResultSet rs= ps.executeQuery();
              while(rs.next())
              {
                  b=rs.getBlob("photo");
              }
              byte byt[]=b.getBytes(1, (int)b.length());
              response.setContentType("image/jpg");
              OutputStream os= response.getOutputStream();
              os.write(byt);
              os.close();
        %>
        
    </body>
</html>