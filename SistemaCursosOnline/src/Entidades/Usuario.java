
package Entidades;

import Entidades.EnumsEntidades.EnumFormaCompra;


public class Usuario {
    
    int DNI;
    String Nombre;
    String Email;
    String telefono;
    EnumFormaCompra FormaCompra;
    String contrasena;
    public Usuario(){
    };

    public Usuario(int DNI, String Nombre, String Email, String telefono, EnumFormaCompra FormaCompra, String contrasena) {
        this.DNI = DNI;
        this.Nombre = Nombre;
        this.Email = Email;
        this.telefono = telefono;
        this.FormaCompra = FormaCompra;
        this.contrasena = contrasena;
    }

    public void setDNI(int DNI) {
        this.DNI = DNI;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setFormaCompra(EnumFormaCompra FormaCompra) {
        this.FormaCompra = FormaCompra;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getDNI() {
        return DNI;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getEmail() {
        return Email;
    }

    public String getTelefono() {
        return telefono;
    }

    public EnumFormaCompra getFormaCompra() {
        return FormaCompra;
    }

    public String getContrasena() {
        return contrasena;
    }

    @Override
    public String toString() {
        return "Usuario :" + "\nDNI=" + DNI + "\nNombre=" + Nombre + "\nEmail=" + Email +
                "\ntelefono=" + telefono + "\nFormaCompra=" + FormaCompra.toString() +
                "\ncontrasena=" + contrasena;
    }

    
}
            

