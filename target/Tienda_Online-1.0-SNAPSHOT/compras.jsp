<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra</title>
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
            <div class="contendor-detalles">
                <div class="separador">
                    <div class="caja">
                    <p>Nombre del producto: </p>
                    </div>
                    <div class="caja">
                        <p>Precio del producto: </p>
                    </div>
                    <div class="caja">
                        <p>Descripcion del producto: </p>
                    </div>
                    <div class="caja">
                        <label>Catidad de producto: </label>
                        <input type="number" name="catidad" id="cantidad" placeholder="cuantas unidades quieres"/>
                    </div>
                    <div class="caja">
                        <p>Valor Total: </p>
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
