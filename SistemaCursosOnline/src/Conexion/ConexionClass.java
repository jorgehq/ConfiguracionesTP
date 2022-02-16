/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConexionClass {
     Connection conexion=null;
     
     public ConexionClass() throws SQLException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion=DriverManager.getConnection("jdbc:mysql://localhost/sistemacursosonline","root","");
            
        }catch(ClassNotFoundException ex){
   
            System.out.println(ex.getMessage());
        }
        
    }
     public Statement crearStatment(){
        try{
            return conexion.createStatement();
    
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
         }
         return null;
   
     }
    
}
