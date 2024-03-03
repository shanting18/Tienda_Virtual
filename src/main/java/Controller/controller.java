package Controller;

import modelo.Producto;

import java.util.List;

public class controller {
    public static void main(String[] args) {
        ProductoController controller = new ProductoController();

        List<Producto> productos = controller.ListarProducto();

        System.out.println("Lista de productos:");

        int contador = 1;
        for (Producto producto : productos) {
            System.out.println(contador + ": " + producto.toString());
            contador++;
        }
        System.out.println("producto controller: "+ productos);
    }
}
