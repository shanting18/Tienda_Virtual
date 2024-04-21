package modelo.productos;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.productos.Pago;
import modelo.usuario.Usuario;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2024-04-20T20:13:05")
@StaticMetamodel(Compras.class)
public class Compras_ { 

    public static volatile SingularAttribute<Compras, Date> fechaCompra;
    public static volatile SingularAttribute<Compras, Double> precio;
    public static volatile SingularAttribute<Compras, Boolean> estado;
    public static volatile SingularAttribute<Compras, Long> id;
    public static volatile SingularAttribute<Compras, Pago> pago;
    public static volatile SingularAttribute<Compras, Usuario> compraCliente;

}