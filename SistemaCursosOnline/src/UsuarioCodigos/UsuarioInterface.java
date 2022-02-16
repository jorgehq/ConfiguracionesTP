
package UsuarioCodigos;

import Entidades.Usuario;
import java.util.List;



public interface UsuarioInterface {
    
    public Usuario buscarUsuarioPorDNI(int DNI);
    
    public List<Usuario> obtenerTodosLosUsuarios();
    
}
