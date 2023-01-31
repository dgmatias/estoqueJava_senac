
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

   public void CadastrarVendedor (VendedorDTO vendedorDTO) throws ClassNotFoundException, SQLException {
       
       String sql = "INSERT INTO vendedor(vendedor_nome, vendedor_email) VALUES (?,?)";
       
       conn = new ConexaoDAO().conexaoDB();
       
       try {
           
           pstm = conn.prepareStatement(sql); //Prepara o comando SQL
           pstm.setString(1, VendedorDTO.getNome()); //Setando o nome, equivalente ao BindValue
           pstm.execute();
           pstm.close();
       } catch (SQLExepction e) {
           
       }
   }
   
    
}
