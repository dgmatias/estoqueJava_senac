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
                                    out.print(lista.get(i).getId() );
                                    out.print(lista.get(i).getNome() );
                                    out.print(lista.get(i).getEmail() );
                                    
                                    
                                    out.print("<a type='button' href='frmEditarVendedor.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+                                                                                               
                                                "'>Editar</a>");
                                    out.print("<a type='button'  href='frmExcluirVendedor.jsp?id=" 
                                                + lista.get(i).getId() +
                                                "&nome="+ lista.get(i).getNome() + 
                                                "&email="+ lista.get(i).getEmail()+                                                
                                                "'>Excluir</a>");
                                     
                                %>    
                                
                                <%
                                }     
                            }catch(Exception e){
                            }
                       %>  
        
    </body>
</html>