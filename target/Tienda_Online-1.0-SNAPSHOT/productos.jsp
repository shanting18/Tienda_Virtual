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
             <link rel="stylesheet" href="css/productos.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- logo -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
   </head> 
  
   <body>
       <header>
           <div class="header">
               <div class="contenedor">
                   <div class="fila">
                        <div class="largor-logo">
                              <div class="contenedor-logo">
                                  <a href="#">logo shanting</a>
                              </div>
                         </div>   
                         <div class="largor-nav">
                            <div class="contenedor-nav">
                                 <nav class="navegacion">
                                     <div class="largor-lista">
                                         <ul class="espacio-lista">
                                              <li class="nav-item active">
                                                  <a class="nav-link" href="productos.jsp">Hombre</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="#">Mujer</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="shop.html">sobre nosotros</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="contact.html">Contactanos</a>
                                              </li>
                                              <li class="nav-item login_btn">
                                                  <a class="nav-link" href="login.jsp">Login</a>
                                              </li>
                                              <li class="nav-item">
                                                  <a class="nav-link" href="registrar.jsp">Registrar</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i><i class="fa fa-search" aria-hidden="true"></i></a>
                                              </li>
                                         </ul>
                                      </div>
                                 </nav>   
                             </div>
                        </div>
                   </div>
              </div>       
          </div>
       </header> 
       <section>
           <div class="contenedor">
               <div class="fila">
                   <div class="categoria">
                       <ul class="espacio-lista">
                            <li class="cat-item">
                                <a class="cat-link" href="#">Camisas</a>
                            </li>
                            <li class="cat-item">
                                <a class="cat-link" href="#">Pantalones</a>
                            </li>
                            <li class="cat-item">
                                <a class="cat-link" href="#">Zapatos</a>
                            </li>
                            <li class="cat-item">
                                <a class="cat-link" href="#">Accesorios</a>
                            </li>
                            <li class="cat-item">
                                <a class="cat-link" href="#">Vestidos</a>
                            </li>
                            <li class="cat-item">
                                <a class="cat-link" href="#">Maquillaje</a>
                            </li>
                       </ul>
                  </div>
               </div>
            </div>
       </section>
        <section>
            <% ProductoController controller = new ProductoController();
                    List<Producto> productos = controller.ListarProducto(); %>
    <div class="productos">
        <div class="contenedor-producto">
            <div class="fila">
                <% for (Producto producto : productos) { %>
                    <a href="#">
                        <div class="caja">
                            <figure><img src="<%= producto.getFoto()%> " width="0px" height="30px" alt=""/></figure>
                            <h3><span class="peso">$</span> <%= producto.getPrecio() %> </h3>
                            <p> <%= producto.getNombre()%></p>
                        </div>
                    </a>
                <% } %>
            </div>
        </div>
    </div>
</section>

       <footer>
             <div class="footer">
            <div class="contenedor">
                     <ul class="location_icon">
                        <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Location</li>
                        <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +57 123456789</li>
                        <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com</li>
                     </ul>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>© 2019 All Rights Reserved. Design by<a href="https://html.design/"> Free Html Templates</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer> 
   </body> 
</html>

   
