# Tarea 1

## Trabajo a realizar
Se solicita realizar un sitio web básico de noticias con una administración sencilla que
cumpla con las historias de usuario que se listan a continuación.

## Historias de usuario

### Ver todas las noticias
Como usuario, quiero entrar al sitio web y que en la página principal se muestre un
listado de las últimas 10 noticias publicadas, ordenadas desde la más nueva a la más
antigua.
Para cada noticia, quiero ver el titular, la bajada, que por ningún motivo debe superar
los 200 caracteres, el cuerpo de la noticia y un link a la noticia completa. Cuando el
cuerpo de la noticia supere los 500 caracteres, debe truncarse en la última palabra
antes de los 500 caracteres y poner 3 puntos adyacentes a la última palabra (ejemplo:
última palabra…) para señalar que el texto continúa.
Por último, quiero ver la cantidad de comentarios publicados en cada noticia.

### Ver detalle de noticia
Como usuario, cuando hago click en una noticia, quiero que el sitio me muestre una
noticia completa, con su título, bajada y cuerpo correspondiente.
Además, quiero ver los comentarios realizados en la noticia y la posibilidad de agregar
un nuevo comentario.
Para publicar un comentario, debo ingresar mi nombre y el contenido del comentario, y
ambos campos deben ser obligatorios.

### Ver sitio de administración
Si yo soy un usuario administrador del sitio, quiero poder ingresar a un sitio donde pueda ver y administrar todas las noticias publicadas en el portal.
Para ingresar al sitio de administración, debo iniciar sesión con un usuario y contraseña previamente creados.
El ingreso al sitio de administración deberé realizarlo por medio de un botón o link que estará presente en el sitio principal.
Las noticias presentadas en este portal de administración se me deben mostrar como una lista ordenada de más nueva a más antigua, y cada entrada de la lista debe darme la opción de editar o borrar una noticia específica.
Al hacer click en editar, se debe mostrar una vista donde se pueda cambiar el título, la bajada o el cuerpo de la noticia. No se debe poder editar la fecha de publicación. 
Al hacer click en eliminar, se debe mostrar un diálogo de confirmación, el cuál al aceptar, la noticia se debe eliminar y debe desaparecer del listado. Al eliminarse una noticia, también se debe dejar de mostrar en el sitio principal.

### Publicar noticia
En el sitio de administración, debe haber un botón que me permita crear una nueva noticia. Cuando se presione, se me debe mostrar un formulario en el que pueda ingresar el título, la bajada y el cuerpo de la noticia. Además, al guardar, se debe registrar la fecha y hora de la publicación de la noticia.
Luego de publicar una noticia, esta debe aparecer en el primer lugar del sitio principal y además se debe mostrar en el listado del sitio de administración.

## Requisitos no funcionales

### Lenguaje de programación y framework
Se recomienda el uso de Ruby, versión 2.3.0 o superior (http://www.ruby-lang.org/), y el framework Ruby On Rails, versión 5.0 o superior (http://rubyonrails.org/).

### Arquitectura de software
El software por construir deberá estar construido en un framework usando el patrón MVC.

### Bases de datos
Las noticias deberán ser guardadas en una base de datos PostgreSQL. Todas las consultas a la base de datos (SELECT, INSERT, UPDATE y DELETE) deberán ser realizadas a través del ORM del framework. No deben quedar consultas en duro o conexiones directas a las bases de datos.

### Publicación del sitio
El sitio debe ser alojado en un servidor Heroku. La capa gratuita del servicio es suficiente para el alcance de este requerimiento. 

### Documentación
Se deberá entregar un modelo UML de base de datos donde se indique claramente las relaciones entre las tablas, los campos de cada tabla, sus claves primarias y claves foráneas.

### Gestión de usuarios
Los permisos de usuarios y seguridad de las páginas con inicio de sesión se deben manejar con los elementos del framework seleccionado para este fin. Esto quiere decir que no se puede usar un login con usuario/contraseña en duro y que los usuarios y permisos deben quedan en base de datos.
Para el manejo de usuarios y sesiones en Rails, se recomienda el uso de la gema devise.
