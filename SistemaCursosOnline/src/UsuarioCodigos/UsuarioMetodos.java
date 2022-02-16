
package UsuarioCodigos;

import Conexion.ConexionClass;
import Entidades.EnumsEntidades.EnumFormaCompra;
import Entidades.Usuario;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UsuarioMetodos implements UsuarioInterface{
    Statement s;
    public UsuarioMetodos(){
        ConexionClass conexion;
        try {
            conexion = new ConexionClass();
            s=conexion.crearStatment();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
         }
        
    }
    public List<Usuario> obtenerTodosLosUsuarios(){
        List<Usuario> lista=new ArrayList();
        try {
        ResultSet rs;
            rs = s.executeQuery("select * from usuario");
             while(rs.next()){
                 lista.add(new Usuario(rs.getInt("DNI"),rs.getString(2),
                        rs.getString(3),rs.getString(4),
                         EnumFormaCompra.valueOf(rs.getString("FormaCompra")),rs.getString(6)));
                
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage()); 
        }
        return lista;
    }
    @Override
    public Usuario buscarUsuarioPorDNI(int DNI){
        
        return obtenerTodosLosUsuarios().stream()
                .filter(c->c.getDNI()==DNI)
                .findFirst().orElse(new Usuario());
   
        

    
    }


}

