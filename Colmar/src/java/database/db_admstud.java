/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author DELL
 */
public class db_admstud {
    public static void main(String[] args) throws ClassNotFoundException{
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
        Statement st= con.createStatement();
         st.executeUpdate("create table studadm(id INTEGER primary key not NULL AUTO_INCREMENT,firstname varchar(50) NOT NULL,lastname varchar(50) NOT NULL,std varchar(50) NOT NULL,email varchar(50) NOT NULL,phoneno bigint(10) NOT NULL,address varchar(40) NOT NULL,pastmarks varchar(50) NOT NULL,pastschool varchar(50) NOT NULL )");
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
