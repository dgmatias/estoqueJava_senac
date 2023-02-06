<%-- 
    Document   : editarClienteAction
    Created on : 1 de fev. de 2023, 19:46:55
    Author     : 51127512021.2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            ClienteDTO clienteDTO = new clienteDTO();
            clienteDTO.setClienteId(
                Integer.parseInt(request.getParameter("id"))
            );
            clienteDTO.setCliente(request.getParameter("nome"));
            clienteDTO.setCliente(request.getParameter("email"));
            
            ClienteDAO clienteDAO = new ClienteDAO();
            clienteDAO.AlterarCliente(clienteID);
            
            response.sendRedirect("listarCliente.jsp");
            
            }catch(Exception e){
                System.out.println("Erro " + e);
            }
        %>
    </body>
</html>
