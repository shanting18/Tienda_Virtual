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
            <form action="SvRegistrar" method="post" id="request" class="menu_form">
                <div class="caja">
                    <h3>Crear cuenta</h3>
                </div>
                <div class="caja">
                    <label for="nombre">Nombre: </label>
                    <input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre"/>
                </div>
                <div class="caja">
                    <label for="apellidos">Apellidos: </label>
                    <input type="text" name="apellidos" id="apellidos" placeholder="1mer Apellido"/>
                </div>
                <div class="caja">
                    <label for="email" />Email: </label>
                    <input type="email" name="email" id="email" placeholder="email" required />
                </div>
                <div class="caja">
                    <label for="password" />Contraseña: </label>
                    <input type="password" name="password" id="password" placeholder="contraseña" required />
                </div>
                
                <button type="submit" >
                   Resgisrar
               </button>
            </form>
       </section>
   </body>