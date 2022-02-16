
package UsuarioModel;

import javax.swing.JFrame;


public class AppUsuario {
   public static void main(String[] args) {
        MUsuario formu1 = new MUsuario();
        formu1.setBounds(0, 0, 400, 400);
        formu1.setVisible(true);
        formu1.setResizable(false);
        formu1.setLocationRelativeTo(null);
        formu1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
}
}