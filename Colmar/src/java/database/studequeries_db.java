/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author DELL
 */
import java.sql.*;
public class studequeries_db {
    public static void main(String[] args) throws ClassNotFoundException{
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
        Statement st= con.createStatement();
         st.executeUpdate("create table studquery(id INTEGER primary key not NULL AUTO_INCREMENT,name varchar(50) NOT NULL,queries varchar(200))");
         System.out.println("Table created succesfully");
        }
        catch(SQLException e)
         {
              System.out.println(e+"Table not created");
         }
    }

    public Connection Connection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
}

