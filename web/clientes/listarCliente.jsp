<%-- 
    Document   : listarClientes
    Created on : 1 de fev. de 2023, 20:42:38
    Author     : 51127512021.2
--%>

<%@page import="br.com.estoque.DTO.ClienteDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.estoque.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar bg-light">
            <div class="container">
                <a href=""><span class="navbar-brand mb-0 h1"></span></a>
                <div>
                    <h1> Listar Clientes </h1>
                </div>
                
                <%
            try{
                ClienteDAO clienteDAO = new ClienteDAO();
                ArrayList<ClienteDTO> lista = clienteDAO.PesquisarCliente();

                for(int i=0; i < lista.size(); i++){
                    out.print("Código: "+ lista.get(i).getClienteId() + "</br>");
                    out.print("Nome: "+ lista.get(i).getClienteNome() + "</br>");
                    out.print("Email: "+ lista.get(i).getClienteEmail() + "</br>");

                    out.print("<a tupe='button' class='btn btn-danger' href='frmExcluirClienteView.jsp?="
                    + lista.get(i).getClienteId() +
                    "&nome"+ lista.get(i).getClienteNome() +
                    "'>Excluir</a>");

                %><br/><br/><%
                }
            }catch(Exception e){
            out.print("Não há clientes");
            }
                %>
                
            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
