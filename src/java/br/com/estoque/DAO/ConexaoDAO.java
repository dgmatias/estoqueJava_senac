package br.com.estoque.DAO;

//Importando as bibliotecas

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class ConexaoDAO {

    public Connection conexaoDB () throws ClassNotFoundException { //metodo responsável pela conexão ao banco de dados

        Connection conn = null; //invocando um objeto, porém como tipo null

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/estoque_db?user=root&password="; //Variavel com o nome da variavel
            conn = DriverManager.getConnection(url); //GetConnection é uma função responsavel pela conexão ao banco de dados, e o paramentro dele deve ser a URL
            System.out.println("A conexão foi executada com sucesso");
        } catch (SQLException e) { 
            System.out.println("Não foi possivel a conexão"); //Caso ele capture um erro, ele irá imprimir  essa mensagem
        }

        return conn;
    }

}