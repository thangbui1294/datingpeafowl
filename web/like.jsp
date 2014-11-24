<%@ page import="com.java.db.DBConnection" %>
<%--
  Created by IntelliJ IDEA.
  User: sarmeet
  Date: 11/24/14
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    if (session.getAttribute("pid") != null && request.getAttribute("vid") != null) {
        if (session.getAttribute("pid") != "" && request.getAttribute("vid") != "") {
            String LikeAddQuery = "INSERT INTO `Likes` VALUES ('"+ session.getAttribute("pid") + "','"+ request.getAttribute("vid")+"','" + new java.sql.Date(new java.util.Date().getTime()) + "');";
            DBConnection.ExecUpdateQuery(LikeAddQuery);
        }
    }
    response.sendRedirect("");
    %>




<html>
<head>
    <title></title>
</head>
<body>




</body>
</html>
