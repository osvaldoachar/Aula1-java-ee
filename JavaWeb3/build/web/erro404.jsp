

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Erro</title>
    </head>
    <style>
               *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                background: whitesmoke;
                font-family: roboto, sans-serif;
                overflow-y: hidden;
            }
            .container{
                background: #fff;
                border-radius: 10px;
                box-shadow: 0px 0px 10px #999;
                margin: 5% auto;
                padding: 20px;
                text-align: center;
                width: 50%;
                display: block;
            }
            h1{
                font-size: 20rem;
                color: yellowgreen;
                letter-spacing: 10px;
                font-weight: 600;
            }
            h2{
               letter-spacing: 5px;
               color: green;
            }
            button{
                height: 35px;
                padding: 5px 35px;
                margin: 10px;
                border: none;
                border-bottom: solid 2px yellowgreen;
                outline: none;
                border-radius: 10px;
                
            }
            button a{
                text-decoration: none;
                color: yellowgreen;
                font-size: 16px;
                font-weight: 600;
                text-transform: uppercase;
                transition: all .8s ease;
            }
            button:hover{
                background: yellowgreen;
            }
            button:hover a{
                color: whitesmoke;
            }
    </style>
    <body>

        <div class="container">
             <h1>404</h1>
             <h2>Página não encontrada! volte para a página inicial</h2>
             <button><a href="index.jsp">Página Inicial</a></button>
        </div>
    </body>
</html>
