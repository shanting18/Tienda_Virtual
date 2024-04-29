package servlets.productos;

import Controller.ProductoController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.productos.Producto;

@WebServlet(name = "SvDetalles", urlPatterns = {"/SvDetalles"})
public class SvDetalles extends HttpServlet {
    
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
            
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            Producto productoExistente = controller.BuscarProducto(id);
  
                productoExistente.setNombre(nombre);
                productoExistente.setDescripcion(descripcion);
                productoExistente.setPrecio(precio);
                productoExistente.setCantidad(cantidad);
                controller.editarProducto(productoExistente);
                
            response.sendRedirect("detalles.jsp");
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
