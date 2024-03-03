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
           <form action="SvProductos" method="post" enctype="multipart/form-data" id="request" class="menu_form">
                <div class="caja">
                    <h1>Crear producto</h1>
                </div>
               <div class="caja">
                    <label for="nombre">Archivo: </label>
                    <input type="file" name="file" id="file" placeholder="Ingrese una imagen"/>
                </div>
                <div class="caja">
                    <label for="nombre">Nombre: </label>
                    <input type="text" name="nombre" id="nombre" placeholder="nombre del producto"/>
                </div>
               <div class="caja">
                    <label for="precio" />Precio: </label>
                    <input type="text" name="precio" id="precio" placeholder="precio" required />
                </div>
               <div class="caja">
                    <label for="cantidad" />Catidad: </label>
                    <input type="text" name="cantidad" id="cantidad" placeholder="cantidad" required />
                </div>
                <div class="caja">
                    <label for="descripcion" />Descripcion: </label>
                <textarea id="descripcion" name="descripcion" cols="77" rows="10">
                </textarea>
                </div>
                <button type="submit" >
                    Crear producto
                </button>
            </form>
       </section>
       <section>
           <table>
               <thead>
                   <tr>
                       <th>Imagenes</th>
                       <th>Nombre</th>
                       <th>Precio</th>
                       <th>cantidad</th>
                       <th>Descripcion</th>
                   </tr>
               </thead>
               <% ProductoController controller = new ProductoController();
                    List<Producto> productos = controller.ListarProducto(); %>
               <tbody>
                   <% if(productos != null){%>
                        <% for (Producto producto : productos) {%>
                            <tr>
                               <th><img src="<%=producto.getFoto()%>" width="200px" height="200px" alt=""/></th>
                               <th><%=producto.getNombre()%></th>
                               <th><%=producto.getPrecio()%></th>
                               <th><%=producto.getCantidad()%></th>
                               <th><%=producto.getDescripcion()%></th>
                               <th>editar</th>
                               <th>eliminar</th>
                           </tr>
                        <%}%>
                   <% } else { %>
                        <h3>La lista de productos está vacía o no está disponible.</h3>
                   <% } %>
               </tbody>
           </table>
       </section>
   </body>