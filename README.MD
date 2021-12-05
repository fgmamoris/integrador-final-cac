# Trabajo final

_Para finalizar el curso de Codo a Codo brindado por el GCBA, se realizo el presente trabajo final a fin de dar cumplimiento con la finalización del curso._

## Consigna 2  :pencil:

_Desarrolle un sistema para gestionar información permitiendo la persistencia de datos en una base de datos, utilizando mysql, la información utilizada para la persistencia es a elección del desarrollador, como podría ser alumnos, articulos, autos, etc.._

_El proyecto implica realizar un CRUD, un sistema desarrollado en Java para el servicio Backend con Servlet, con patrón de diseño de arquitectura MVC, utilizando Maven para la inyección de dependencias, entre ellas mysql para la persistencia de datos, html para las páginas, y Bootstrap para el maquetado de las dichas páginas._


### Pre-requisitos :wrench:


_Para la compilación y ejecución del proyecto se utilizó las siguientes tecnologías_


* [NetBeans](https://netbeans.org/) - IDE versión 12.5

* [Xampp](https://www.apachefriends.org/index.html) - MySql versión 10.4.19-MariaDB y Apache versión 3.3.0

* [Java OpenJdk](https://https://openjdk.java.net/) - 17 OpenJDK 64-Bit Server VM 17+35-2724

* [Google Chrome](https://www.google.com/intl/es-419/chrome/) - Navegador web


### Instalación :factory:


_Clonar el proyecto desde el repositorio, a su máquina local, puede ser desde la consola o bien desde el entorno gráfico de la página de GitHub_

```
git clone https://github.com/fgmamoris/integrador-final-cac
```

_Abrir el proyecto desde un IDE, ya sea NetBeans, IntellijIdea, Eclipse o cualquier otro IDE de que usted utiice para ejecutar aplicaciones en JAVA_

_Antes de proseguir, debera configurar la base de datos._

_Primero: Crear la base de datos "crud2159"._

_Segundo: Crear la tabla "articulos"._

_Tercero: Asignar todos los permisos al usuario root, para que tenga acceso a la base de datos creada anteriormente._

_Cuarto: Ejecutar la siguiente sentencia sql a fin de tener el sistema funcional._

```
CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

_Volcado de datos para la tabla `articulos`_
```
INSERT INTO `articulos` (`id`, `code`, `name`, `description`, `price`) VALUES
(1, '123', 'Palos', 'Description short ', 18),
(2, '12', 'Anzuelos', 'Anzuelo de rio\r\n ', 18),
(6, '123', 'Anzuelos', 'Anzuelos para variada de mar', 1321.325);
```


_Indices de la tabla `articulos`_
```
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);
```

_Tener en cuenta al momento de ejecutar la ultima sentencia, modificar los datos a necesidad del usuario._ 


_Sexto: Ejecutar la aplicación desde "http://localhost:8080/integradocac/"_

## Construido con :hammer_and_wrench:

_Para dar cumplimiento a los requisitos solicitados se utilizaron las siguientes herramientas para el desarrollo del sistema._

* [Java OpenJdk](https://https://openjdk.java.net/) - 17 OpenJDK 64-Bit Server VM 17+35-2724
* [Maven](https://maven.apache.org/) - Manejador de dependencias
* [Bootstrap](https://getbootstrap.com/) - Maquetado y diseño Html

### ScreenShot del sistema :camera:

#### Inicio
![inicio](/images/home.png)
##### Todos los registros
![all](/images/all.png)
##### Nuevo registro
![new](/images/new.png)
##### Editar registro
![edit](/images/edit.png)

### Autor :black_nib:

* **Federico Mamoris** - *Trabajo final* - [fgmamoris](https://github.com/fgmamoris)

### A su consideración :gift:

* Comenta a otros sobre este proyecto :mega:
* Invita una cerveza :beer: o un café :coffee: a alguien del equipo. 
* Muchas gracias por tomarse el tiempo de ver el repositorio :grin:.


---
:hammer_and_wrench: con :hearts: por [fgmamoris](https://github.com/fgmamoris) :blush:

