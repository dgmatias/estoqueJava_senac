<%@page import="br.com.estoque.DTO.VendedorDTO"%>
<%@page import="br.com.estoque.DAO.VendedorDAO"%>
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
