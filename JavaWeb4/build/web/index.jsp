<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
                margin: 10% auto;
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
                padding: 10px;
            }
            a:hover{
                color: deepskyblue;
                text-decoration: underline;
                font-weight: 500;
                
            }
        </style>
        <%
            if(request.getAttribute("mensagemErro") != null){
            
            %>
        <script type="text/javascript">alert("<%=request.getAttribute("mensagemErro") %>")</script>
    <%}%>
    
    </head>
    <body>
        <div class="container">
        <form action="AutenticarServlet" method="POST">
            
                        <h1>Login</h1>
                      
                        <label>Usuário: </label><br>
                        <input type="text" name="login" value="" size="30" /><br>
                        <label>Senha: </label><br>
                        <input type="password" name="senha" value="" size="30" /><br>
                       <input type="submit" value="Entrar" name="botaoAuth" /><br><br>
                        <a href="cadastro.jsp">Cadastre-se</a>
        </form>
        
       </div>
    </body>
</html>
