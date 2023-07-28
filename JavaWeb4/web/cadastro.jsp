<%-- 
    Document   : cadastro
    Created on : May 1, 2023, 12:42:06 PM
    Author     : Jocas Achar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
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
                box-shadow: 0px 10px 20px #999;
                margin: 3% auto;
                padding: 20px;
                text-align: center;
                width: 30%;
                display: block;
            }
            h1{
                color: dodgerblue;
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
                color: dodgerblue;
            }
            input{
                height: 40px;
                width: 100%;
                border: none;
                outline: none;
                border-radius: 10px;
                font-size: 16px;
                padding: 5px;
                color: dodgerblue;
                border-bottom: solid 2px dodgerblue; 
            }
            input[type="submit"]{
                margin-top: 20px;
                font-weight: 700;
                letter-spacing: 3px;
                text-transform: uppercase;
                transition: all .6s ease;
            }
            input[type="submit"]:hover{
                background: dodgerblue;
                color: whitesmoke;
            }
            a{
                margin-top: 25px;
                text-decoration: none;
                color: dodgerblue;
            }
            a:hover{
                color: deepskyblue;
                text-decoration: underline;
                font-weight: 500;
                
            }
        </style>
    </head>
    <body>
        <div class="container">
        <form action="cadastrarServlet" method="post">
                       <h1>Cadastre-se</h1>
                      
                        <label>Nome: </label><br>
                        <input type="text" name="nome" value="" /><br>
                        <label>E-mail: </label><br>
                        <input type="email" name="email"><br>
                        <label>Cidade: </label><br>
                        <input type="text" name="cidade"><br>
                    
                        <label>Bairro: </label><br>
                        <input type="text" name="bairro"><br>
                        <label>Login: </label><br>
                        <input type="text" name="login"><br>
                        <label>Senha: </label><br>
                        <input type="password" name="senha"><br><br>
                        <input type="submit" value="cadastrar"><br><br>
                        <p>Já tenho uma conta, <a href="index.jsp">fazer login</a></p>
                        

        </form>
        </div>
    </body>
</html>
