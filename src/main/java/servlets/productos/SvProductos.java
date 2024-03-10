 package servlets.productos;

import Controller.ProductoController;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Producto;

@MultipartConfig
@WebServlet(name = "SvProductos", urlPatterns = {"/SvProductos"})
public class SvProductos extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ProductoController controller = new ProductoController();
    private final String pathFoto = "/WEB-INF/fotos/";
    private final File cargarFoto = new File(pathFoto);
    private final String[] extenciones = {".ico", ".png",".jpg",".jpeg"};

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if ("editar".equals(accion)) {
            request.getRequestDispatcher("EditarProducto.jsp").forward(request, response);
            long id = Long.parseLong(request.getParameter("id"));
            Producto producto = controller.BuscarProducto(id);
            request.setAttribute("editarProducto", producto);
        }   
        else if("modificar".equals(accion)){
             
            long id = Long.parseLong(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String categoria = request.getParameter("categoria");
            String descripcion = request.getParameter("descripcion");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            Part part = request.getPart("file");
            Producto productoExistente = controller.BuscarProducto(id);
       
            if (part == null) {
                return;
            }

            if (validarExtension(part.getSubmittedFileName(), extenciones)) {
                String foto = guardarFoto(part, cargarFoto);
                productoExistente.setNombre(nombre);
                productoExistente.setCategoria(categoria);
                productoExistente.setDescripcion(descripcion);
                productoExistente.setPrecio(precio);
                productoExistente.setCantidad(cantidad);
                productoExistente.setFoto(foto);
                controller.editarProducto(productoExistente);
            }
            response.sendRedirect("crearProducto.jsp");
        }
        else if("eliminar".equals(accion)){
            long id = Long.parseLong(request.getParameter("id"));
            controller.eliminarProducto(id);
            response.sendRedirect("crearProducto.jsp");
            
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Producto producto = new Producto();
        
        String nombre = request.getParameter("nombre");
        String categoria = request.getParameter("categoria");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        Part part = request.getPart("file");
        
        if (part == null) {
            return;
        }
        
        if (validarExtension(part.getSubmittedFileName(), extenciones)) {
            String foto = guardarFoto(part, cargarFoto);
            
            producto.setNombre(nombre);
            producto.setCategoria(categoria);
            producto.setDescripcion(descripcion);
            producto.setPrecio(precio);
            producto.setCantidad(cantidad);
            producto.setFoto(foto);
            
            controller.crearProducto(producto);
            
        }
        
            response.sendRedirect("productos.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    private String guardarFoto(Part part, File file){
        String rutaAbsoluta = "";
        
        try {
            Path path = Paths.get(part.getSubmittedFileName());
            String nombreArchivo = path.getFileName().toString();
            InputStream input = part.getInputStream();
            
            if (input != null) {
                File fil = new File(file,nombreArchivo);
                rutaAbsoluta = fil.getAbsolutePath();
                Files.copy(input, fil.toPath());
            }
        } catch (IOException e) {
        }
        return rutaAbsoluta;
    }

    private boolean validarExtension(String nombreArchivo, String[] extension){
        for (String ex : extension) {
            if (nombreArchivo.toLowerCase().endsWith(ex)) {
                return true;
            }
        }
        return false;
    }
}
