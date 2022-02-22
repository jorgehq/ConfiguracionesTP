
package UsuarioCodigos;

import Entidades.Usuario;
import java.util.List;



public interface UsuarioInterface {
    //Interface del Usuario de esta manera aplicamos lo aprendido de la clase 
    //y nos aseguramos que en la clase metodos si o si esten codeados.
    public void Insertar(Usuario nuevo);
    public Usuario buscarUsuarioPorDNI(int DNI);
    
    public List<Usuario> obtenerTodosLosUsuarios();
    
}
