package br.com.estoque.DTO;

public class VendedorDTO {

    private int vendedor_id;
    private String vendedor_nome;
    private String vendedor_email;
    
    public int getId(){
        return vendedor_id;
    }
    
    public void setId(int vendedor_id){
        this.vendedor_id = vendedor_id;
    }
    
    public String getNome(){
        return vendedor_nome;
    }
    
    public void setNome(String vendedor_nome){
        this.vendedor_nome = vendedor_nome;
    }
    
    public String getEmail(){
        return vendedor_email;
    }
    
    public void setEmail(String vendedor_email){
        this.vendedor_email = vendedor_email;
    }
    
}