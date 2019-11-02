package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class db_file {
    public static void main(String[] args) throws ClassNotFoundException{
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
        Statement st= con.createStatement();
         st.executeUpdate("create table employee(id int(11) NOT NULL ,firstname varchar(50) NOT NULL,lastname varchar(50) NOT NULL,filename varchar(255) NOT NULL,path varchar(255) NOT NULL,added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP)");
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
