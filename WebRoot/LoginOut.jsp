<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<html>
  <head>
    
    <title>My JSP 'LoginOut.jsp' starting page</title>
  </head>
  
  <body>
    <%
    session.removeAttribute("user");
    response.sendRedirect("");
     %>
  </body>
</html>
