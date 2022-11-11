/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;


public class Ventas {
    
    String Hamburguesa;
    String Piza ; 
    String Gaseosa;  
    String Papas;
    String Totalpagar;
    String Direccion;
    int tarjeta; 
    int clavetarjeta;

    public Ventas() {
    }

    public Ventas(String Hamburguesa, String Piza, String Gaseosa, String Papas, String Totalpagar, String Direccion, int tarjeta, int clavetarjeta) {
        this.Hamburguesa = Hamburguesa;
        this.Piza = Piza;
        this.Gaseosa = Gaseosa;
        this.Papas = Papas;
        this.Totalpagar = Totalpagar;
        this.Direccion = Direccion;
        this.tarjeta = tarjeta;
        this.clavetarjeta = clavetarjeta;
    }

    public String getHamburguesa() {
        return Hamburguesa;
    }

    public void setHamburguesa(String Hamburguesa) {
        this.Hamburguesa = Hamburguesa;
    }

    public String getPiza() {
        return Piza;
    }

    public void setPiza(String Piza) {
        this.Piza = Piza;
    }

    public String getGaseosa() {
        return Gaseosa;
    }

    public void setGaseosa(String Gaseosa) {
        this.Gaseosa = Gaseosa;
    }

    public String getPapas() {
        return Papas;
    }

    public void setPapas(String Papas) {
        this.Papas = Papas;
    }

    public String getTotalpagar() {
        return Totalpagar;
    }

    public void setTotalpagar(String Totalpagar) {
        this.Totalpagar = Totalpagar;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public int getTarjeta() {
        return tarjeta;
    }

    public void setTarjeta(int tarjeta) {
        this.tarjeta = tarjeta;
    }

    public int getClavetarjeta() {
        return clavetarjeta;
    }

    public void setClavetarjeta(int clavetarjeta) {
        this.clavetarjeta = clavetarjeta;
    }

   
}
