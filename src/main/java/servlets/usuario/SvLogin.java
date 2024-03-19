package servlets.usuario;

import Controller.UsuarioController;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.usuario.Usuario;

@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {
    
    UsuarioController controller = new UsuarioController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        try {
            if (validarCredenciales(email,password)) {
                HttpSession session = request.getSession(true);
                session.setAttribute("email", email);
                response.sendRedirect("productos.jsp");
            }
        } catch (Exception ex) {
            Logger.getLogger(SvLogin.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    private boolean validarCredenciales(String email, String password) throws Exception {
        Usuario usuarioRegistrado = controller.obtenerUsuarioPorEmail(email);
        return usuarioRegistrado != null & password.equals(usuarioRegistrado.getPassword());
    }

}
