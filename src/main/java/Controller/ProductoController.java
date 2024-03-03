package Controller;

import java.util.List;
import modelo.Producto;

public class ProductoController {

        PersistenceController controller = new PersistenceController();

    public void crearProducto(Producto producto) {
        
        controller.crearProducto(producto);
    }

    public  List<Producto> ListarProducto() {
        List<Producto> productos = controller.listadoProducto();
        return productos;
    }
}
