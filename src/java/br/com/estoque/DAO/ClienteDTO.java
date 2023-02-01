/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.estoque.DTO;

/**
 *
 * @author Frederico
 */
public class ClienteDTO {
    private int clienteId;
    private String cliente_nome;
    
    public int getClienteId(){
        return clienteId
    }
    
    public void setClienteId(int clienteId){
        this.clienteId = clienteId;
    }
    
    public String getClienteNome(){
        return clienteNome;
    }
    
    public void setClienteNome(String clienteNome){
        this.clienteNome = clienteNome;
    }
    
    public String getClienteEmail(){
        return clienteEmail;
    }
    
    public void setClienteEmail(String clienteEmail){
        this clienteEmail = clienteEmail;
    }
    
}
