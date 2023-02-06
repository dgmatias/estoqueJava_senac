<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1> Alterar Vendedor </h1>
        
        <form method="post" action="alterarVendedorAction.jsp">
            
            <label> Id </label>
            
            <input name="id" value="<%=request.getParameter("id")%>">
            
            <label> Nome </label>
            
            <input name="nome" value="<%=request.getParameter("nome")%>">
            
            <label> Email </label>
            
            <input name="email" value="<%=request.getParameter("email")%>">
            
            <<input type="submit" value="alterar">
            
        </form>
        
    </body>
</html>
