package Controller;


import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Usuario;
import modelo.Producto;
import persistence.ComprasJpaController;
import persistence.DetallesJpaController;
import persistence.LoginJpaController;
import persistence.PagoJpaController;
import persistence.ProductoJpaController;
import persistence.UsuarioJpaController;



public class PersistenceController {
   
    ComprasJpaController comprasJpa = new ComprasJpaController();
    DetallesJpaController detallesJpa = new DetallesJpaController();
    PagoJpaController pagoJpa = new PagoJpaController();
    ProductoJpaController productoJpa = new ProductoJpaController();
    UsuarioJpaController usuarioJpa = new UsuarioJpaController();
    LoginJpaController loginJpa = new LoginJpaController();

    public PersistenceController() {
    }
    
    // usuarios
    void crearUsuario(Usuario usuario) {
        usuarioJpa.create(usuario);
    }
    
    Usuario obtenerUsuarioPorEmail(String email) throws Exception {
       return usuarioJpa.findByEmail(email);
    }
    
    // login
    void login(String email, String password) {
        loginJpa.iniciarSesion(email, password);
    }

    // productos
    void crearProducto(Producto producto) {
        productoJpa.create(producto);
    }

    public List<Producto> listadoProducto() {
        List<Producto> entities = productoJpa.findEntities();
        return entities;
    }

    Producto buscarProducto(long id) {
      return productoJpa.find(id);
    }
    
    void editarProducto(Producto producto) throws Exception {
       productoJpa.edit(producto);
    }

    void eliminar(long id) {
        try {
            productoJpa.destroy(id);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
