<%@page import="br.com.estoque.DAO.VendedorDAO"%>
<%@page import="br.com.estoque.DTO.VendedorDTO"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Listar Vendeores</h1>
        
        <%
            
            try {
            
            VendedorDAO vendedorDAO = new VendedorDAO();
            ArrayList<VendedorDTO> lista = vendedorDAO.PesquisarVendedor();
            
            for (int i = 0; i < lista.size(); i++) {
            
                out.print("Código: " + lista.get(i).getId() + "<br/>");
                out.print("Nome: " + lista.get(i).getNome() + "<br/>");
                
                out.print("<a type="button" href="frmAlterarVendedor.jsp?id=" + lista.get(i).getId() + "&nome" + lista.get(i).getNome() + ">Alterar </a>"
                out.print("<a type="button" href="frmExcluirVendedor.jsp?id=" + lista.get(i).getId() + "&nome" + lista.get(i).getNome() + ">Excluir </a>"
            }
            
            } catch (SQLException e ) {
                out.print("Não tem dados");
            }

         %>
        
    </body>
</html>
