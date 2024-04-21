package servlets.productos;

import Controller.ProductoController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.productos.Producto;

@WebServlet(name = "detalles", urlPatterns = {"/detalles"})
public class Svdetalles extends HttpServlet {
    
    ProductoController controller = new ProductoController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if ("detalles".equals(accion)) {
            request.getRequestDispatcher("detalles.jsp").forward(request, response);
            long id = Long.parseLong(request.getParameter("id"));
            Producto producto = controller.BuscarProducto(id);
            request.setAttribute("detalles ", producto);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
