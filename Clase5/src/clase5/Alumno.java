/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase5;

/**
 *
 * @author USUARIO
 */
public class Alumno {
    private final Cerebro cerebro;
    private Celular celular;
    
    public Alumno(){
        cerebro=new Cerebro();
    }
    
    public Alumno(Celular celular){
        cerebro=new Cerebro();
        this.celular=celular;
    }
    
    public void usarComputadora(Computadora computadora){
        System.out.println("Usa "+computadora);
    }
    
    public String informarCerebro(){
        return cerebro.toString();
    }

    public Celular getCelular() {
        return celular;
    }

    public void setCelular(Celular celular) {
        this.celular = celular;
    }
    
}

class Cerebro {
    
}

class Computadora {
    
}

class Celular {
    
}
