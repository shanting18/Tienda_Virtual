<%@page import="modelo.productos.Producto"%>
<%@page import="Controller.ProductoController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"> 
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <title>Detalle</title> 
       <!-- style css -->
             <link rel="stylesheet" href="css/detalles.css">
      <!-- Responsive-->
            <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        <header>
           <div class="header">
               <div class="contenedor">
                  <div class="largor-logo">
                        <div class="contenedor-logo">
                            <a href="#">logo shanting</a>
                        </div>   
                  </div>
              </div>       
          </div>
       </header>
        <section>
            
            <% 
                long id = Long.parseLong(request.getParameter("id"));
                ProductoController controller = new ProductoController();
                Producto producto = controller.BuscarProducto(id);
            %>
            <div class="contendor-detalles">
                <div class="separador">
                    <div class="caja">
                        <p>Nombre del producto:  <b><%=producto.getNombre()%></b></p>
                    </div>
                    <div class="caja">
                        <p>Precio del producto:  <b><%=producto.getPrecio()%></b></p>
                    </div>
                    <div class="caja">
                        <p>Descripcion del producto:  <b><%=producto.getDescripcion()%></b></p>
                    </div>
                    <div class="caja">
                        <% int cantidad = 1; %>
                        <label>Catidad de producto:  </label>
                        <input type="text" name="cantidad" id="cantidadInput" value="<%=cantidad%>" oninput="actualizarTotal()"/>
                    </div>
                    <div class="caja">
                        <% double total = cantidad * producto.getPrecio(); %>
                        <p>Valor Total:  <b id="totalValue"><%=total%></b></p>
                    </div>
                </div>
                <div class="separador">
                    <div class="caja-pago">
                        <div class="titulo-pago">
                            <h2>Metodo de pago</h2>
                        </div>
                        <div class="metodos-pago">
                            <a class="link-pago" href="productos.jsp">
                                <p>tarjeta credito/devito</p>
                            </a>
                        </div>
                        <div class="metodos-pago-pse">
                            <a class="link-pagos" href="productos.jsp">
                                <p>PSE</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
                    
        <script>
            function actualizarTotal() {
                // Obtener el valor actual de la cantidad
                var cantidad = parseInt(document.getElementById('cantidadInput').value);

                // Obtener el precio del producto
                var precio = <%=producto.getPrecio()%>;

                // Calcular el nuevo valor total
                var total = cantidad * precio;

                // Actualizar el valor total en el HTML   00
                document.getElementById('totalValue').innerText = total;
            }
        </script>
    </body>
</html>
