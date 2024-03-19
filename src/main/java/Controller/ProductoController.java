package Controller;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.productos.Producto;

public class ProductoController {

        PersistenceController controller = new PersistenceController();

    public void crearProducto(Producto producto) {
        controller.crearProducto(producto);
    }

    public  List<Producto> ListarProducto() {
        List<Producto> productos = controller.listadoProducto();
        return productos;
    }
    
    public Producto BuscarProducto(Long id){
       return controller.buscarProducto(id);
    }
    
    public void editarProducto(Producto producto){
            try {
                controller.editarProducto(producto);
            } catch (Exception ex) {
                Logger.getLogger(ProductoController.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

    public void eliminarProducto(long id) {
        controller.eliminar(id);
    }
}
