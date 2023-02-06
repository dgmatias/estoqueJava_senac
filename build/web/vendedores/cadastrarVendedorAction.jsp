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
        <%
            try{
                VendedorDTO vendedorDTO = new VendedorDTO();
                VendedorDTO.setNome(request.getParameter("nome"));
                VendedorDTO.setEmail(request.getParameter("email"));
                VendedorDAO vendedorDAO = new VendedorDAO();
                VendedorDAO.CadastrarVendedor(VendedorDTO);
                
                response.sendRedirect("listarVendedor.jsp");
            } catch(Exception e){
                System.out.println("Erro"+ e);
            }
        %>
    </body>
</html>
