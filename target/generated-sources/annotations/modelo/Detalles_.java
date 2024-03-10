package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Compras;
import modelo.Producto;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2024-03-10T17:20:34")
@StaticMetamodel(Detalles.class)
public class Detalles_ { 

    public static volatile SingularAttribute<Detalles, Compras> compra;
    public static volatile SingularAttribute<Detalles, Double> precioCompra;
    public static volatile SingularAttribute<Detalles, Long> id;
    public static volatile SingularAttribute<Detalles, Integer> cantidad;
    public static volatile SingularAttribute<Detalles, Producto> producto;

}