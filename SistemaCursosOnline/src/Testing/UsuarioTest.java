
package Testing;

import Entidades.Usuario;
import UsuarioCodigos.UsuarioMetodos;
import java.util.ArrayList;
import java.util.List;


public class UsuarioTest {
    public static void main(String[] args) {
        UsuarioMetodos usuarioM = new UsuarioMetodos();
        System.out.println("Mostrando lista completa \n");
        usuarioM.obtenerTodosLosUsuarios().forEach(System.out::println);
        
        System.out.println("Buscando por DNI \n");
        
        System.out.println(usuarioM.buscarUsuarioPorDNI(40893402).toString()); 
        
    }
    
}
