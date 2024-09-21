<%-- 
    Document   : sucesso
    Created on : 26 de ago. de 2024, 10:16:22
    Author     : ptoledo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <%
        String msg = (String)request.getAttribute("msg");
        %>
        <h1>Resultado: <%out.print(msg);%></h1>
    </body>
</html>
