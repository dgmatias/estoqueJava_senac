<%-- 
    Document   : frmCadastrarCliente
    Created on : Feb 14, 2023, 11:24:05 AM
    Author     : Frederico
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content">

            <h1> Crie sua conta! </h1>

        <form action="./cadastrarClienteAction.jsp" method="post">
            
            <label for="">
                Nome: <br>
            </label>
            
            <input type="text" name="nome"> <br>

            <label for="">
                E-mail: <br>
            </label>
            
            <input type="text" name="email"> <br>
            
            <input type="submit" value="cadastrar">

        </form>

    </div>
    </body>
</html>
