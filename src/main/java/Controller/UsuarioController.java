package Controller;
import modelo.usuario.Usuario;

public class UsuarioController {

        PersistenceController controller = new PersistenceController();    
      
    // usuario
    public void crearUsuario(Usuario usuario){
        controller.crearUsuario(usuario);
    }
    
    public Usuario obtenerUsuarioPorEmail(String email) throws Exception {
      return controller.obtenerUsuarioPorEmail(email);
    }
    
    // login
    public void iniciarSesion(String email, String password){
        controller.login(email, password);
    }

    
    
}
