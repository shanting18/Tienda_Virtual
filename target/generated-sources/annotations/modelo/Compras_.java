package modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Pago;
import modelo.Usuario;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2024-03-10T17:20:34")
@StaticMetamodel(Compras.class)
public class Compras_ { 

    public static volatile SingularAttribute<Compras, Date> fechaCompra;
    public static volatile SingularAttribute<Compras, Double> precio;
    public static volatile SingularAttribute<Compras, Boolean> estado;
    public static volatile SingularAttribute<Compras, Long> id;
    public static volatile SingularAttribute<Compras, Pago> pago;
    public static volatile SingularAttribute<Compras, Usuario> compraCliente;

}