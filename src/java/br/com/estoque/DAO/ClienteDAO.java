/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.estoque.DAO;

import br.com.estoque.DTO.ClienteDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author 51127512021.2
 */
public class ClienteDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ClienteDTO> lista = new ArrayList<>();
    
    public void CadastrarCliente(ClienteDTO clienteDTO) throws ClassNotFoundException{
        String sql = "INSERT INTO cliente (cliente_id, cliente_nome, cliente_email) VALUES (?, ? , ?)";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setString (1, clienteDTO.getClienteNome());
            pstm.setString (2, clienteDTO.getClienteEmail());
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
    
    public ArrayList<ClienteDTO> PesquisarCliente() throws ClassNotFoundException{
        String sql = "SELECT * FROM cliente";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            for(int i = 0; rs.next(); i++){
            //O next vai ler tudo até o primeiro espaço.
            //Se fosse o nextLine, ele leria até a próxima quebra de linha.
            ClienteDTO clienteDTO = new ClienteDTO();
            //O objeto clientteDTO está recebendo as informações da classe.
            clienteDTO.setClienteId(rs.getInt("cliente_id"));
            clienteDTO.setClienteNome(rs.getString("cliente_nome"));
            clienteDTO.setClienteEmail(rs.getString("cliente_email"));
            
            lista.add(clienteDTO);
        }
            while (rs.next()){
                ClienteDTO clienteDTO = new ClienteDTO();
                clienteDTO.setClienteId(rs.getInt("cliente_id"));
                clienteDTO.setClienteNome(rs.getString("cliente_nome"));
                clienteDTO.setClienteEmail(rs.getString("cliente_email"));
                
                lista.add(clienteDTO);
            }
            pstm.close();
        }catch(SQLException e){
            
        }
        return lista;
    }
    
    public void AlterarCliente(ClienteDTO clienteDTO) throws ClassNotFoundException{
        String sql = "UPDATE cliente SET cliente_nome = ?, cliente_email = ? WHERE cliente_id = ?";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, clienteDTO.getClienteNome());
            pstm.setString(2, clienteDTO.getClienteEmail());
            pstm.setInt(3, clienteDTO.getClienteId());
            
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
            System.out.println("Não alterou");
        }
    }
    
    public void ExcluirCliente(ClienteDTO clienteDTO) throws ClassNotFoundException{
        String sql = "DELETE FROM cliente WHERE id = ?";
        conn = new ConexaoDAO().conexaoDB();
        
        try{
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, clienteDTO.getClienteNome());
            pstm.setString(2, clienteDTO.getClienteEmail());
            pstm.setInt(3, clienteDTO.getClienteId());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
            
        }
    }
}
