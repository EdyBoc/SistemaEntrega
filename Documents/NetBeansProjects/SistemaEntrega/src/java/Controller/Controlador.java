package Controller;

import Config.Conexion;
import Entidad.Producto;
import Entidad.Repartidores;
import Entidad.Tiendas;
import Entidad.Usuario;
import Entidad.Ventas;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List datos;

    //Pagina de Bienvenida
    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    //Mostrar Error

    @RequestMapping("Error.htm")
    public ModelAndView Listar1() {
        mav.addObject("lista", datos);
        mav.setViewName("Error");
        return mav;

    }

    //Mostar a Login
    @RequestMapping("Login.htm")
    public ModelAndView Listar2() {
        mav.addObject("lista", datos);
        mav.setViewName("Login");
        return mav;

   
    }
    //validacion de usuario

    @RequestMapping(value = "Login.htm", method = RequestMethod.POST)
    public ModelAndView Login(Usuario u) {

        List datos = null;
        String consulta = "SELECT COUNT(*) FROM Usuario WHERE Nombre=? AND Clave=? and User = 'Admin'";
        int rw = this.jdbcTemplate.queryForObject(consulta, Integer.class, u.getUser(), u.getClave());
        if (rw > 0) {
            return new ModelAndView("redirect:/admin.htm");
        } else {
            consulta = "SELECT COUNT(*) FROM Usuario WHERE Nombre=? AND Clave=? and User = 'Repartidor'";
            rw = this.jdbcTemplate.queryForObject(consulta, Integer.class, u.getUser(), u.getClave());
            if (rw > 0) {
                return new ModelAndView("redirect:/miruta.htm");
            } else {
                consulta = "SELECT COUNT(*) FROM Usuario WHERE Nombre=? AND Clave=? and User = 'Edy'";
                rw = this.jdbcTemplate.queryForObject(consulta, Integer.class, u.getUser(), u.getClave());
                if (rw > 0) {
                    return new ModelAndView("redirect:/carrito.htm");
                } else {

                    return new ModelAndView("redirect:/Error.htm");
                }
            }
        }
    }
//Mostar a Login

    @RequestMapping("MapaActivo.htm")
    public ModelAndView Listar4() {
        mav.addObject("lista", datos);
        mav.setViewName("MapaActivo");
        return mav;

    }

    //Menu administrador
    @RequestMapping("admin.htm")
    public ModelAndView Listar6() {
        mav.addObject("lista", datos);
        mav.setViewName("admin");
        return mav;
    }

    //Vista de ruta de repartidor
    @RequestMapping("MapaRuta.htm")
    public ModelAndView Listar7() {
        mav.addObject("lista", datos);
        mav.setViewName("MapaRuta");
        return mav;
    }

    //Vista tiendas
    @RequestMapping("Tiendas.htm")
    public ModelAndView Listar8() {
        String sql = "select * from tiendas";
        List datos1 = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista8", datos1);
        mav.setViewName("Tiendas");
        return mav;
    }

    //Vista administracion de usuarios
    @RequestMapping("NuevoUsuario.htm")
    public ModelAndView Listar9() {
        String sql = "select * from Usuario";
        List dato = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dato);
        mav.setViewName("NuevoUsuario");
        return mav;
    }

    //Agregar nueva compra
    @RequestMapping(value = "carrito.htm", method = RequestMethod.GET)
    public ModelAndView carrito() {
        mav.addObject(new Ventas());
        mav.setViewName("carrito");
        String sql = "select * from ventas";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("medios_lista", datos);
        return mav;

    }

    @RequestMapping(value = "carrito.htm", method = RequestMethod.POST)
    public ModelAndView carrito(Ventas v, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://carrito.htm");

        } else {

            String sql = "INSERT INTO `ventas` (`Hamburguesa`, `Piza`, `Gaseosa`, `Papas`, `Totalpagar`,Direccion, tarjeta, clavetarjeta,`Fechacompra`) values(?,?,?,?,?,?,?,?,NOW())";
            this.jdbcTemplate.update(sql, v.getHamburguesa(), v.getPiza(), v.getGaseosa(), v.getPapas(), v.getTotalpagar(), v.getDireccion(), v.getTarjeta(), v.getClavetarjeta());
            return new ModelAndView("redirect:/carrito.htm");
        }

    }

    //Vista de ruta de repartidor
    @RequestMapping("Solicitud.htm")
    public ModelAndView Listar10() {
        mav.addObject("lista", datos);
        mav.setViewName("Solicitud");
        return mav;
    }

    //Menu de repartidor
    @RequestMapping("mapaadmin.htm")
    public ModelAndView Listar11() {
        mav.addObject("lista", datos);
        mav.setViewName("mapaadmin");
        return mav;
    }

    //Vista para cliente prueba
    @RequestMapping("Ventas.htm")
    public ModelAndView Listar12() {
        mav.addObject("lista", datos);
        mav.setViewName("Ventas");
        return mav;
    }

    @RequestMapping("agregartienda.htm")
    public ModelAndView Listar13() {
        mav.addObject("lista", datos);
        mav.setViewName("agregartienda");
        return mav;
    }

    @RequestMapping("Distancia.htm")
    public ModelAndView Listar14() {
        mav.addObject("lista", datos);
        mav.setViewName("Distancia");
        return mav;
    }

    //Agregar nueva tienda
    @RequestMapping(value = "agregartienda.htm", method = RequestMethod.GET)
    public ModelAndView agregartienda() {
        mav.addObject(new Tiendas());
        mav.setViewName("agregartienda");
        String sql = "select * from tiendas";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("medios_lista", datos);
        return mav;

    }

    @RequestMapping(value = "agregartienda.htm", method = RequestMethod.POST)
    public ModelAndView carrito(Tiendas t, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://agregartienda.htm");

        } else {

            String sql = "INSERT INTO `Tiendas` (`Direccion`, `Numetienda`, `Nomencargado`, `telefono`, `idRepartidor`,`Estatus`,`Fechacreado`) values(?,?,?,?,?,?,NOW())";
            this.jdbcTemplate.update(sql, t.getDireccion(), t.getNumetienda(), t.getNomencargado(), t.getTelefono(), t.getIdRepartidor(), t.getEstatus());
            return new ModelAndView("redirect:/agregartienda.htm");
        }

    }
    @RequestMapping("Piloto.htm")
    public ModelAndView Listar16() {
        String sql = "select * from repartidor";
        List dato = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dato);
        mav.setViewName("Piloto");
        return mav;
        }
    
    //Vista de todos creacion
    @RequestMapping("AgregarRepartidor.htm")
    public ModelAndView Listar17() {
        mav.addObject("lista", datos);
        mav.setViewName("agregartienda");
        return mav;

    }

    //Agregar nueva tienda
    @RequestMapping(value = "AgregarRepartidor.htm", method = RequestMethod.GET)
    public ModelAndView AgregarRepartidor() {
        mav.addObject(new Repartidores());
        mav.setViewName("AgregarRepartidor");
        String sql = "select * from repartidor";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("medios_lista", datos);
        return mav;
    }

    @RequestMapping(value = "AgregarRepartidor.htm", method = RequestMethod.POST)
    public ModelAndView Repartidores (Repartidores r, BindingResult resultadoValidacion) {
        if (resultadoValidacion.hasErrors()) {
            return new ModelAndView("redirect://AgregarRepartidor.htm");

        } else {

            String sql = "INSERT INTO `repartidor` (`NombreR`,`telefonoR`, `EstatusR`,`FechacreacionR`) values(?, ?, ?, NOW())";
            this.jdbcTemplate.update(sql, r.getNombreR(), r.getTelefonoR(), r.getEstatusR());
            return new ModelAndView("redirect:/AgregarRepartidor.htm");
        }
    }
    @RequestMapping("Reporte.htm")
    public ModelAndView Listar18() {
        String sql = "select * from Ventas";
        List dato = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dato);
        mav.setViewName("Reporte");
        return mav;
        }
    //Menu de repartidor
    @RequestMapping("Metodonor.htm")
    public ModelAndView Listar19() {
        mav.addObject("lista", datos);
        mav.setViewName("Metodonor");
        return mav;
        }
    @RequestMapping("miruta.htm")
    public ModelAndView Listar20() {
        String sql = "select * from miruta";
        List dato = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", dato);
        mav.setViewName("miruta");
        return mav;
        }
    //Menu de repartidor
    @RequestMapping("Estados.htm")
    public ModelAndView Listar21() {
        mav.addObject("lista", datos);
        mav.setViewName("Estados");
        return mav;
        }
    
}




