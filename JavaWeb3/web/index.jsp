
<%@page contentType="text/html charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pegando dados do formulario</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                background: whitesmoke;
                font-family: roboto, sans-serif;
            }
            .container{
                background: #fff;
                border-radius: 10px;
                box-shadow: 0px 0px 10px #999;
                margin: 5% auto;
                padding: 20px;
                text-align: center;
                width: 30%;
                display: block;
            }
            h1{
                color: yellowgreen;
                letter-spacing: 2px;
                font-weight: 600;
            }
            label{
                display: block;
                font-size: 16px;
                position: absolute;
                padding: 5px;
                margin-bottom: 5px;
                font-weight: 600;
                color: yellowgreen;
            }
            input{
                height: 40px;
                width: 100%;
                border: none;
                outline: none;
                border-radius: 10px;
                font-size: 16px;
                padding: 5px;
                color: yellowgreen;
                border-bottom: solid 2px yellowgreen; 
            }
            input[type="submit"]{
                font-weight: 700;
                letter-spacing: 3px;
                text-transform: uppercase;
                transition: all .6s ease;
            }
            input[type="submit"]:hover{
                background: yellowgreen;
                color: whitesmoke;
            }
            
        </style>
    </head>
    <body>
        <div class="container">
        <h1>Sistema de Boas Vindas</h1>
        <form name="meuForm" action="SistemaServlet" method="POST">
            <label for="nome">Nome: </label><br>
            <input type="text" name="nome" value="" id="nome" size="30"  placeholder="Digite o seu nome"/>
            <label for="apelido">Apelido: </label><br><br>
            <input type="text" name="apelido" value="" id="apelido" size="30"  placeholder="Digite o seu nome"/>
           <br> <br><input type="submit" value="Entrar" />
        </form>
        </div>
        <div class="container">
            <%
          
            if(request.getAttribute("dados") != null){
            out.println("<h1>Seja Bem Vindo(a), "+ request.getAttribute("dados")+"</h1>");
                }
            %>
        </div>
    </body>
</html>
