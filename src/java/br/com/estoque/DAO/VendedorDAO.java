
package br.com.estoque.DAO;

//Importando as bibliotecas

import br.com.estoque.DTO.VendedorDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VendedorDAO {
    
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<VendedorDTO> lista = new ArrayList<>();
    
   public void CadastrarVendedor (VendedorDTO vendedorDTO) throws ClassNotFoundException {
       
       String sql = "INSERT INTO vendedor(vendedor_nome, vendedor_email) VALUES (?,?)";
       
       conn = new ConexaoDAO().conexaoDB();
       
       try {
           
           pstm = conn.prepareStatement(sql); //Prepara o comando SQL
           pstm.setString(1, vendedorDTO.getNome()); //Setando o nome, equivalente ao bindValue
           pstm.setString(2,  vendedorDTO.getEmail() ); //Setando o email
           pstm.execute(); //Executa o comando
           pstm.close(); //Fecha a conexão
       } catch (SQLException e) {
           System.out.println("Não foi possivel cadastrar");
       }
   }
   
   public void ExcluirVendedor (VendedorDTO vendedorDTO) throws ClassNotFoundException {
       
       String sql = "Delete from vendedor WHERE = ?";
       
       conn = new ConexaoDAO().conexaoDB();
       
       try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, vendedorDTO.getId());
            pstm.execute();
            pstm.close();
       } catch (SQLException e) {
           System.out.print(e);
       }
     
       
   }
   
   public void EditarVendedor (VendedorDTO vendedorDTO) throws ClassNotFoundException {
       
       String sql = "Update vendedor set vendedor_nome = ?, vendedor_email = ? where id = ?";
       
       conn = new ConexaoDAO().conexaoDB();
       
       try {
           
         pstm = conn.prepareStatement(sql);
         pstm.setString(1, vendedorDTO.getNome() );
         pstm.setString(2, vendedorDTO.getEmail() );
         pstm.setInt(3, vendedorDTO.getId() );
         pstm.execute();
         pstm.close();
       } catch (SQLException e) {
           System.out.print(e);    
       }
       
   }
   
   public ArrayList<VendedorDTO> PesquisarVendedor () throws ClassNotFoundException {
       
       String sql = "Select * from vendedor";
       
       conn = new ConexaoDAO().conexaoDB();
       
       try {
           
         pstm  = conn.prepareStatement(sql);
         rs = pstm.executeQuery();
           
         for (int i = 0; rs.next(); i++); {
           
           VendedorDTO vendedorDTO = new VendedorDTO();
           vendedorDTO.setId(rs.getInt("vendedor_id") );
           vendedorDTO.setNome(rs.getString("vendedor_nome") );
           vendedorDTO.setEmail(rs.getString("vendedor_email") );
           
           lista.add(vendedorDTO);
           
           pstm.close();
           
          } 
                  
       }  catch (SQLException e) {
           
       }
       
      return lista;
   }
    
}