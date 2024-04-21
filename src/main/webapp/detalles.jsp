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
                int cantidad = 0;
                long id = Long.parseLong(request.getParameter("id"));
                ProductoController controller = new ProductoController();
                Producto producto = controller.BuscarProducto(id);
                double total = producto.getCantidad()* producto.getPrecio();
            %>
            <div class="contendor-detalles">
                <div class="separador">
                    <div class="caja">
                    <p>Nombre del producto: <%=producto.getNombre()%></p>
                    </div>
                    <div class="caja">
                        <p>Precio del producto: <%=producto.getPrecio()%></p>
                    </div>
                    <div class="caja">
                        <p>Descripcion del producto: <%=producto.getDescripcion()%></p>
                    </div>
                    <div class="caja">
                        <label>Catidad de producto: </label>
                        <input type="text" name="catidad" id="cantidad" placeholder="cuantas unidades quieres" value="<%=producto.setCantidad(cantidad)%>"/>
                    </div>
                    <div class="caja">
                        <p>Valor Total: <%=total%></p>
                    </div>
                </div>
                <div class="separador">
                    <div class="caja-pago">
                        <h2>Metodo de pago</h2>
                        <a class="link-pago" href="productos.jsp">
                            <p>targeta credito/devito</p>
                        </a>
                        <a class="link-pagos" href="productos.jsp">
                            <p>PSE</p>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
