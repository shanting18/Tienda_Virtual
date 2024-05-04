<%@page import="modelo.productos.Producto"%>
<%@page import="Controller.ProductoController"%>
<%@page import="java.util.ArrayList"%>
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
             <link rel="stylesheet" href="css/index.css">
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
                                                  <a class="nav-link" href="login.jsp">ropa</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="login.jsp">Belleza</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="shop.jsp">sobre nosotros</a>
                                              </li>
                                              <li class="nav-item">
                                                 <a class="nav-link" href="contact.jsp">Contactanos</a>
                                               </li>
                                                <li class="nav-item login_btn">
                                                   <a class="nav-link" href="login.jsp">Iniciar Sesion</a>
                                                </li>
                                                <li class="nav-item">
                                                     <a class="nav-link" href="registrar.jsp">Registrar</a>
                                                </li>
                                                <li class="nav-item">
                                                      <a class="nav-link" href="carrito.jsp"><img src="icon/carrito.png" alt="#"/></a>
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
                 <div class="banner">
                     <div class="contenedor">
                           <div class="texto-bg">
                               <h1> <span class="peso">Welcome</span></h1>
                                  <%--aqui img de modelo --%>
                               <figure><img src="  images/banner_img.png" alt="#"/></figure>
                               <a class="leer-mas" href="#">Shop Now</a>
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
                        <div class="caja">
                            <a href="SvDetalles?accion=detalles&id=<%=producto.getId()%>">
                                <figure><img src="${pageContext.request.contextPath} <%= producto.getFoto()%>" width="0px" height="30px" alt=""/></figure>
                                    <h3><span class="peso">$</span> <%= producto.getPrecio() %> </h3>
                                    <p> <%= producto.getNombre()%></p>
                            </a>
                            <button onclick="window.location.href='carrito.'"class="carrito">Añadir carrito</button>
                        </div>
                        <% } %>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div id="cotacto" class="contacto">
                <div class="contenedor-contacto">
                   <form id="request" class="menu_form">
                       <div class="contenedor-form">
                           <div class="caja">
                                  <h3>Contact Us</h3>
                               </div>
                               <div class="caja">
                                  <input class="contactos" placeholder="Nombre" type="type" name="Name"> 
                               </div>
                               <div class="caja">
                                  <input class="contactos" placeholder="Numero celular" type="type" name="Phone Number"> 
                               </div>
                               <div class="caja">
                                  <input class="contactos" placeholder="Email" type="type" name="Email">                          
                               </div>
                               <div class="caja">
                                  <input class="contactos-msj" placeholder="Mensaje" type="type" Message="Name">
                               </div>
                               <div class="caja">
                                  <button class="enviar_btn">Enviar</button>
                           </div>
                       </div>
                   </form>
                </div>
            </div>            
        </section>  
      <footer>
        <div class="footer">
            <div class="contenedor">
                <ul class="location_icon">
                    <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br> Location</li>
                    <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +01 1234567890</li>
                    <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> demo@gmail.com</li>
                </ul>
            </div>
        </div>
      </footer> 
   </body>
</html>