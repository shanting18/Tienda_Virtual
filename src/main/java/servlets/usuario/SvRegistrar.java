
package servlets.usuario;

import Controller.UsuarioController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;

@WebServlet(name = "SvRegistrar", urlPatterns = {"/SvRegistrar"})
public class SvRegistrar extends HttpServlet {
    
        UsuarioController controller = new UsuarioController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario();
        
     String username = request.getParameter("nombre");
     String apellido = request.getParameter("apellidos");
     String password = request.getParameter("password");
     String email = request.getParameter("email");
     
     usuario.setUsername(username);
     usuario.setApellido(apellido);
     usuario.setEmail(email);
     usuario.setPassword(password);
     
     controller.crearUsuario(usuario);
     response.sendRedirect("login.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
