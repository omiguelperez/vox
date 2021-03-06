# language: es
Característica: listar usuarios
  Con la finalidad de poder ver todos los usuarios del sistema
  como un usuario administrador
  Quiero poder ver un listado de los usuarios, junto con los links para editarlos o borrarlos.

# Ejemplo de datos:
# | usuario    | nombre | apellido | email                        | clave   |  facebook | twitter | tipo_usuario_id |
# |pepeargento | pepe   | argento  | pepeargento@argentina.com.ar | moni12345           | @pepe  | 1               |

Antecedentes:
  Dado que estoy logueado como "Administrador"

# Camino feliz
Escenario: listar un usuario
  Dado que he creado 1 usuario:
    | usuario    | nombre | apellido | email                        | password   | facebook  | twitter | tipo_usuario_id |
    |pepeargento | pepe   | argento  | pepeargento@argentina.com.ar | clave12345 |           | @pepe   | 1               |
  Y que estoy en la pantalla de "administración de Usuarios"
  Entonces veo una lista de los usuarios con 1 de ellos.

Escenario: más de un usuario
  Dado que he creado 2 usuario:
    | usuario    | nombre | apellido | email                           | password   |facebook  | twitter | tipo_usuario_id |
    |pepeargento | pepe   | argento  | pepeargento@argentina.com.ar    | clave12345|          | @pepe   | 1               |
    |coquiargento | coqui   | argento  | coquiargento@argentina.com.ar | clave12345|          | @coqui  | 3               |
  Y que estoy en la pantalla de "administración de Usuarios"
  Entonces veo una lista de los usuarios con 2 de ellos.

Escenario: tiene el mismo contenido
  Dado que he creado 2 usuario:
    | usuario      | nombre | apellido | email                         | password  | facebook  | twitter | tipo_usuario_id |
    | pepeargento  | pepe   | argento  | pepeargento@argentina.com.ar  | clave12345|           | @pepe   | 1               |
    | coquiargento | coqui  | argento  | coquiargento@argentina.com.ar | clave12345|           | @coqui  | 3               |
  Y que estoy en la pantalla de "administración de Usuarios"
  Entonces veo una lista con exactamente la información de los 2 usuarios.
    | Usuario           | Nombre | Apellido | Email                         | Facebook  | Twitter | Tipo usuario |
    | Admin shinjiikari |        |          | shinji@ikari.com.ar           |           |         | 1            |    
    | pepeargento       | pepe   | argento  | pepeargento@argentina.com.ar  |           | @pepe   | 1            |
    | coquiargento      | coqui  | argento  | coquiargento@argentina.com.ar |           | @coqui  | 3            |
# shinjiikari es el usuario admin. de prueba 

# Casos Extremos.
# Escenario: no tiene usuarios creados.
#  Dado que no he creado ningún usuario
#  Y que estoy en la pantalla de "administración de Usuarios"
#  Entonces veo una una tabla vacía, con el mensaje "Ud. no tiene registros creados."
# Si o si, vas a tener que tener 1 usuario creado, el administrador, para poder estar logueado y ver estas opciones.

# @to-do
# Ver link a las organizaciones del usuario.