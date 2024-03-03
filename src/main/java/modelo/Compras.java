package modelo;

import javax.persistence.*;
import java.util.Date;
@Entity
public class Compras {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Temporal(TemporalType.DATE)
    private Date fechaCompra;
    private double precio;
    private boolean estado;
    @ManyToOne
    @JoinColumn(name = "id_compra")
    private Usuario compraCliente; 
    @OneToOne
    private Pago pago;

    public Compras() {
    }

    public Compras(long id, Date fechaCompra, double precio, boolean estado) {
        this.id = id;
        this.fechaCompra = fechaCompra;
        this.precio = precio;
        this.estado = estado;
    }

    public Compras(long id, Date fechaCompra, double precio, boolean estado, Usuario compraCliente, Pago pago) {
        this.id = id;
        this.fechaCompra = fechaCompra;
        this.precio = precio;
        this.estado = estado;
        this.compraCliente = compraCliente;
        this.pago = pago;
    }

    public Pago getPago() {
        return pago;
    }

    public void setPago(Pago pago) {
        this.pago = pago;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public Usuario getCompraCliente() {
        return compraCliente;
    }

    public void setCompraCliente(Usuario compraCliente) {
        this.compraCliente = compraCliente;
    }

}
