package Entidad;

public class Repartidores {
    
    int idrepartidor;
    String NombreR;
    int telefonoR;
    String EstatusR;  

    public Repartidores() {
    }

    public Repartidores(int idrepartidor, String NombreR, int telefonoR, String EstatusR) {
        this.idrepartidor = idrepartidor;
        this.NombreR = NombreR;
        this.telefonoR = telefonoR;
        this.EstatusR = EstatusR;
    }

    public int getIdrepartidor() {
        return idrepartidor;
    }

    public void setIdrepartidor(int idrepartidor) {
        this.idrepartidor = idrepartidor;
    }

    public String getNombreR() {
        return NombreR;
    }

    public void setNombreR(String NombreR) {
        this.NombreR = NombreR;
    }

    public int getTelefonoR() {
        return telefonoR;
    }

    public void setTelefonoR(int telefonoR) {
        this.telefonoR = telefonoR;
    }

    public String getEstatusR() {
        return EstatusR;
    }

    public void setEstatusR(String EstatusR) {
        this.EstatusR = EstatusR;
    }
    
}

