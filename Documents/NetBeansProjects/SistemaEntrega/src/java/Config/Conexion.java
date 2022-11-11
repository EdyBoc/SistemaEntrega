package Config;

import java.sql.Connection;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {

    public DriverManagerDataSource Conectar() {
        try {
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            dataSource.setDriverClassName("com.mysql.jdbc.Driver");
            dataSource.setUrl("jdbc:mysql://localhost:3308/bdsys?serverTimezone=UTC");
            dataSource.setUsername("root");
            dataSource.setPassword("");
            System.out.println("Conectado correctamente");
            return dataSource;
        } catch (Exception e) {
            System.out.println("Hubo un erro "+e);
        }
    
    return (null);
    }

    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
