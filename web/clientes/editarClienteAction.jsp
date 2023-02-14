<%-- 
    Document   : editarClienteAction
    Created on : 1 de fev. de 2023, 19:46:55
    Author     : 51127512021.2
--%>

<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page import="br.com.estoque.DTO.ClienteDTO"%>
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
            ClienteDTO clienteDTO = new ClienteDTO();
            clienteDTO.setClienteId(
                Integer.parseInt(request.getParameter("id"))
            );
            clienteDTO.setClienteNome(request.getParameter("nome"));
            clienteDTO.setClienteEmail(request.getParameter("email"));
            
            ClienteDAO clienteDAO = new ClienteDAO();
            clienteDAO.AlterarCliente(clienteDTO);
            
            response.sendRedirect("listarCliente.jsp");
            
            }catch(Exception e){
                System.out.println("Erro " + e);
            }
        %>
    </body>
</html>
