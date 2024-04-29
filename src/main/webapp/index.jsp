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
             <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- logo -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
   </head> 
  
   <body
       <header>
           <div class="header">
               <div class="contenedor">
                   <div class="fila">
                       <!-- parte del logo con el link -->
                       <div class="largor-logo">
                           <div class="contenedor-logo">
                               <a href="#">logo shanting</a>
                           </div>
                       </div>
                       <!-- navegador del header -->
                       <div class="largor-nav">
                           <div class="contenedor-nav">
                               <nav class="navegacion">
                                   <div class="largor-lista">
                           <ul class="espacio-lista">
                              <li class="nav-item active">
                                  <a class="nav-link" href="login.jsp">Hombre</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="login.jsp">Mujer</a>
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
                        <figure><img src="images/banner_img.png" alt="#"/></figure>
                        <a class="leer-mas" href="#">Shop Now</a>
                    </div>
              </div>
          </div>
      </section>  
      <section>
          <div class="productos">
         <div class="contenedor">
            <div class="fila">
                  <div class="titulo">
                     <h2>Our Glasses</h2>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor
                        e et dolore magna aliqua. Ut enim ad minim veniam, qui
                     </p>
               </div>
            </div>
         </div>
         <div class="contenedor-producto">
            <div class="fila">
                <a href="detalles.jsp">
                    <div class="caja">
                     <figure><img src="images/glass1.png" alt="#"/></figure>
                     <h3><span class="peso">$</span>50</h3>
                     <p>Sunglasses</p>
                </div>
                </a>
                <div class="caja">
                     <figure><img src="images/glass2.png" alt="#"/></figure>
                     <h3><span class="peso">$</span>50</h3>
                     <p>Sunglasses</p>
               </div>
                <div class="caja">
                     <figure><img src="images/glass3.png" alt="#"/></figure>
                     <h3><span class="peso">$</span>50</h3>
                     <p>Sunglasses</p>
               </div>
                  <div class="caja">
                     <figure><img src="images/glass4.png" alt="#"/></figure>
                     <h3><span class="peso">$</span>50</h3>
                     <p>Sunglasses</p>
                </div>
                <div class="caja">
                     <figure><img src="images/glass1.png" alt="#"/></figure>
                     <h3><span class="peso">$</span>50</h3>
                     <p>Sunglasses</p>
                </div>
               <div class="contenedor-mas">
                  <a class="leer-mas" href="#">Leer mas</a>
               </div>
            </div>
         </div>
      </div>
      </section>
        <div class="sobre">
         <div class="contenedor">
            <div class="fila flexible">
               <div class="caja">
                  <div class="titulo">
                     <h2>About Our Shop</h2>
                     <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                  </div>
                  <a class="leer-mas" href="#">Read More</a>
               </div>
            </div>
         </div>
      </div>
      <div id="cotacto" class="contacto">
         <div class="contenedor">
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
