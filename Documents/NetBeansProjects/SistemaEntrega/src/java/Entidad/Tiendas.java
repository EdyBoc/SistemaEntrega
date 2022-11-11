package Entidad;

public class Tiendas {

    String Direccion;
    int Numetienda;
    String Nomencargado;
    int telefono;
    int idRepartidor;
    String Estatus;

    public Tiendas() {
    }

    public Tiendas(String Direccion, int Numetienda, String Nomencargado, int telefono, int idRepartidor, String Estatus) {
        this.Direccion = Direccion;
        this.Numetienda = Numetienda;
        this.Nomencargado = Nomencargado;
        this.telefono = telefono;
        this.idRepartidor = idRepartidor;
        this.Estatus = Estatus; 
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public int getNumetienda() {
        return Numetienda;
    }

    public void setNumetienda(int Numetienda) {
        this.Numetienda = Numetienda;
    }

    public String getNomencargado() {
        return Nomencargado;
    }

    public void setNomencargado(String Nomencargado) {
        this.Nomencargado = Nomencargado;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public int getIdRepartidor() {
        return idRepartidor;
    }

    public void setIdRepartidor(int idRepartidor) {
        this.idRepartidor = idRepartidor;
    }

    public String getEstatus() {
        return Estatus;
    }

    public void setEstatus(String Estatus) {
        this.Estatus = Estatus;
    }
    

}
