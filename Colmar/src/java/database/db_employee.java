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
public class db_employee {
    public static void main(String[] args) throws ClassNotFoundException{
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
        Statement st= con.createStatement();
         st.executeUpdate("create table employee(id INTEGER primary key not NULL AUTO_INCREMENT,firstname varchar(50) NOT NULL,lastname varchar(50) NOT NULL,filename varchar(255) NOT NULL , path varchar(255) NOT NULL, added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)");
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

