<%-- 
    Document   : aula2
    Created on : Apr 30, 2023, 11:21:04 AM
    Author     : Jocas Achar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 2</title>
    </head>
    <body>
    <center>
        <form action="" method="">
            <input type="text" name="sauda" placeholder="Digite o Seu Nome">
            <input type="submit" value="Mandar">
        </form>
        <%
        String sauda = request.getParameter("sauda");
        
        if(sauda != null){
            out.println("<h1>Seja Bem-Vindo " + sauda +"</h1>");
            }else if(sauda == "  "){
            out.println("<h1>Tens que digitar um nome!</h1>");
            }
        %>
        </center>
    </body>
</html>
