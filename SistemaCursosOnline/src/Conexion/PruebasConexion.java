
package Conexion;



import java.sql.*;
public class PruebasConexion {



    public static void main(String[] args) {
        Connection conexion=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion=DriverManager.getConnection("jdbc:mysql://localhost/sistemacursosonline","root","");
            
            Statement s=conexion.createStatement();
            ResultSet rs=s.executeQuery("select * from profesor");
            while(rs.next()){
                System.out.println(rs.getInt("idProfesor")+" "+rs.getString(2)+" "+
                        rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5));
            }
        
        }catch(SQLException s){
   
            System.out.println(s.getMessage());
        }catch(ClassNotFoundException ex){
   
            System.out.println(ex.getMessage());
        }finally{
            try{
                if(conexion!=null){
                    conexion.close();
                }
                
            }catch(SQLException ex){
                System.out.println(ex.getMessage());
                
            }
        }
    }
}
