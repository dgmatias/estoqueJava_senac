<%-- 
    Document   : frmExcluirVendedor
    Created on : 3 de fev. de 2023, 20:43:01
    Author     : 51127512022.2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div> <h1>Excluir vendedor </h1> </div>
        
        <form>
            
            <label> Id </label> <br>
            
            <input type="text" name="id" value="<%=request.getParameter("id")%>" /> <br>
            
            <label> Nome </label> <br>
            
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>" /> <br>

            <label> Email </label> <br>
            
            <input type="text" name="email" value="<%=request.getParameter("email")%>" /> <br>
            
            <input type="submit">
        </form>
        
    </body>
</html>
