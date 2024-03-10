<%@page import="Controller.ProductoController"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
      <meta charset = "utf-8"> 
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <title>Shanting</title> 
       <!-- style css -->
             <link rel="stylesheet" href="css/styleForm.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- logo -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
   </head> 
  
   <body>
       <header>
           <div class="header">
               <div class="contenedor">
                       <!-- parte del logo con el link -->
                  <div class="largor-logo">
                        <div class="contenedor-logo">
                            <a href="#">logo shanting</a>
                        </div>   
                  </div>
              </div>       
          </div>
       </header>
       <section>
           <form action="SvProductos?accion=modificar" method="post" enctype="multipart/form-data" class="menu_form">
                <div class="caja">
                    <h1>Editar producto</h1>
                </div>
               <% 
                   long id = Long.parseLong(request.getParameter("id"));
                   ProductoController controller = new ProductoController();
                   Producto producto = controller.BuscarProducto(id); 
               %>
                        
                <div class="caja">
                    <label for="id">Id: </label>
                    <input type="text" name="id" placeholder="" value="<%=producto.getId()%>"/>
                </div>

                <div class="caja">
                    <label for="file">Archivo: </label>
                    <input type="file" name="file" id="file" placeholder="Ingrese una imagen" value="<%=producto.getFoto()%>"/>
                </div>

                <div class="caja">
                    <label for="nombre">Nombre: </label>
                    <input type="text" name="nombre" id="nombre" placeholder="nombre del producto" value="<%=producto.getNombre()%>"/>
                </div>

                <div class="caja">
                    <label for="precio">Precio: </label>
                    <input type="text" name="precio" id="precio" placeholder="precio" value="<%=producto.getPrecio()%>"/>
                </div>

                <div class="caja">
                    <label for="cantidad">Cantidad: </label>
                    <input type="text" name="cantidad" id="cantidad" placeholder="cantidad" value="<%=producto.getCantidad()%>"/>
                </div>

                <div class="caja">
                    <label for="categoria">Categoría: </label>
                    <input type="text" name="categoria" id="categoria" placeholder="categoría del producto" value="<%=producto.getCategoria()%>"/>
                </div>

                <div class="caja">
                    <label for="descripcion">Descripción: </label>
                    <textarea id="descripcion" name="descripcion" value="<%=producto.getDescripcion()%>"></textarea>
                </div>

                <button type="submit">Editar producto</button>     
            </form>
       </section>
    </body>
</html>