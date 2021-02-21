# **Proyecto MUSIC. Ejemplo de API RESTFUL**

## **_ENDPOINTS_**
***
Probar la API con **POSTMAN**

- Recuperar lista de álbums:
    - Método:GET
    - URL: /api/albums

- Visualizar los datos de un álbum:
    - Método:GET
    - URL: /api/albums/1

- Insertar un nuevo álbum
    - Método:POST
    - URL: /api/albums/1
    - Datos (sin id): 
~~~
    {
        "titulo": "Rosalia",
        "lanzado": "2019-04-04T22:00:00.000+0000",
        "genero": "pop",
        "precio": 50.0
    }
~~~

- Modificar un álbum
    - Método:PUT
    - URL: /api/albums/1
    - Datos:
~~~
    {
        "id": 2,
        "titulo": "Rosalia",
        "lanzado": "2019-04-04T22:00:00.000+0000",
        "genero": "pop",
        "precio": 50.0
    }
~~~

- Borrar un álbum
    - Método:DELETE
    - URL: /api/albums/1
## **_Vista de prueba_**
***
- Vista de prueba con las funciones **fetch** llamando a la API

## Base de dades **db_music**
    - Es troba a resources, només conté la taula albums:

~~~
    CREATE TABLE `Albums` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `titulo` varchar(200) NOT NULL,
        `lanzado` date NOT NULL,
        `precio` double NOT NULL,
        `genero` varchar(150) NOT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE=InnoDB;
~~~