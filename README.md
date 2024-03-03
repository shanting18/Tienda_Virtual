# Tienda virtual

###Esta aplicación es una tienda virtual desarrollada utilizando tecnologías Java como JSP y Servlets. Proporciona una plataforma para que los usuarios puedan explorar productos, agregarlos al carrito de compras y realizar compras en línea.

## Requisitos Previos

Asegúrate de tener instalado:

- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Apache Tomcat](http://tomcat.apache.org/) (o cualquier otro contenedor de servlets compatible)

## Configuración del Proyecto

Clona el repositorio:

```bash
git clone https://github.com/tuusuario/tiendavirtual-jsp.git
cd tiendavirtual-jsp
```

1. Despliega la aplicación en tu servidor Tomcat.

2. Accede a la aplicación a través de tu navegador:

http://localhost:8080/tiendavirtual

##Estructura del Proyecto
- /src: Contiene el código fuente Java.
- /src/com/tiendavirtual/servlets: Servlets que manejan las solicitudes HTTP.
- /src/com/tiendavirtual/model: Clases de modelo que representan entidades como productos, usuarios, etc.
- /src/com/tiendavirtual/util: Utilidades generales para el proyecto.
- /WebContent: Contiene archivos JSP y recursos web.
- /WebContent/css: Estilos CSS.
- /WebContent/js: Scripts JavaScript.
- /WebContent/WEB-INF: Configuración y archivos específicos de la aplicación.

##Tecnologías Utilizadas
- Java
- JSP (JavaServer Pages)
- Servlets
- HTML
- CSS
- JavaScript
- tomcat

##Funcionalidades
- Crear editar y eliminar productos: Puedes crear productos si tienes los permisos de ADMIN
- Explorar Productos: Los usuarios pueden ver una lista de productos disponibles.
- Agregar al Carrito: Los usuarios pueden agregar productos al carrito de compras.
- Realizar Compras: Los usuarios pueden realizar compras en línea a través del carrito.

##Contribuciones
Las contribuciones son bienvenidas. Si deseas mejorar la funcionalidad, corregir errores o agregar nuevas características, no dudes en enviar un pull request.

