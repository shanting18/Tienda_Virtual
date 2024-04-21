package modelo.productos;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.productos.Compras;
import modelo.productos.Producto;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2024-04-20T20:13:05")
@StaticMetamodel(Detalles.class)
public class Detalles_ { 

    public static volatile SingularAttribute<Detalles, Compras> compra;
    public static volatile SingularAttribute<Detalles, Double> precioCompra;
    public static volatile SingularAttribute<Detalles, Long> id;
    public static volatile SingularAttribute<Detalles, Integer> cantidad;
    public static volatile SingularAttribute<Detalles, Producto> producto;

}