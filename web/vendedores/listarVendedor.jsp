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
        
        <div> <h1>Listar Vendeores</h1> </div> 
        
        <div> <a href="frmCadastrarVendedor.jsp"> Cadastrar </a> </div> 
        
        
        <%                                                    
                            try {
                                VendedorDAO vendedorDAO = new VendedorDAO();
                                ArrayList<VendedorDTO> lista = vendedorDAO.PesquisarVendedor();
                                
                                for(int i = 0; i < lista.size(); i++){
                                
                                %>
                                <tr>                                    
                                <%
                                    out.print("<td>"+ lista.get(i).getId()+"</td>");
                                    out.print("<td>"+ lista.get(i).getNome() +"</td>");
                                    out.print("<td>"+lista.get(i).getEmail() +"</td>");
                                    
                                    
                                    out.print("<td><a type='button' class='btn btn-success me-2' href='frmEditarVendedor.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+                                                                                               
                                                "'>Editar</a>");
                                    out.print("<a type='button' class='btn btn-danger me-2' href='frmExcluirVendedor.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+                                                
                                                "'>Excluir</a>");
                                     
                                %>    
                                </tr>
                                <%
                                }     
                            }catch(Exception e){
                            }
                       %>  
        
    </body>
</html>