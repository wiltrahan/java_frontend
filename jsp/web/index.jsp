<%--
  Created by IntelliJ IDEA.
  User: twilorip
  Date: 2/19/18
  Time: 6:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JSP Tutorial</title>
  </head>
  <body>
  <table>
      <tbody>
    <%
        Class.forName("org.sqlite.JDBC");
        Connection conn = DriverManager.getConnection("jdbc:sqlite:/Users/twilorip/Desktop/portfolio.db");
        Statement stat = conn.createStatement();
        String DATE = "02/16/2018 17:01:11";
        ResultSet rs = stat.executeQuery("SELECT * FROM " + "'" + DATE + "'");
        while(rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("symbol") + "</td>");
            out.println("<td>" + rs.getString("value") + "</td>");
            out.println("<td>" + rs.getString("dayAmtChg") + "</td>");
            out.println("<td>" + rs.getString("dayPctChg") + "</td>");
            out.println("<td>" + rs.getString("totalShrs") + "</td>");
            out.println("</tr>");
        }
        rs.close();
        conn.close();
  %>

      </tbody>
    </table>
  </body>
</html>
