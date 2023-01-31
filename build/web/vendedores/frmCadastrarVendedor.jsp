
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

        <form action="cadastrarVendedorAction.jsp" method="post">
            
            <label for="">
                Nome: <br>
            </label><br>
            
            <input type="text" name="nome">

            <label for="">
                E-mail: <br>
            </label><br>
            
            <input type="text" name="email">
            
            <input type="submit" value="cadastrar" t>

        </form>

    </div>
    </body>
    
</html>
