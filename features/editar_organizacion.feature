# language: es
Característica: editar perfil organización
  Con la finalidad de poder modificar los datos de una Organización a petición de algun usuario.
  como un usuario administrador
  Quiero poder editar el perfil de una Organización en el sistema

Antecedentes:
  Dado que estoy logueado como "Administrador"
  Dado existe una Organización: "ACME43", "Av. Siempre Viva 742", "ong.org.ar" y "info@email.com"
  Y que estoy en la pantalla de Administración de Organizaciones
  Cuando yo edito una Organización 

# Camino feliz
Escenario: editar una organización 
  Y cambio el nombre por "ACME", el domicilio por "6925 Hollywood Blvd, Hollywood, CA 90028, Estados Unidos"
  Entonces veo que el nombre cambio y el domicilio cambio.

Escenario: agrego dato que faltaba
  Dado existe una Organización llamada "ACME" con domicilio en "Av. Siempre Viva 742", sin web definida
  Y que estoy en la pantalla de Administración de Organizaciones
  Cuando yo edito una Organización
  Y cambio web por "www.acme.org"
  Entonces veo que la web cambio, sin afectar a nombre o dirección.

# Casos extremos
Esquema del escenario: problemas con datos obligatorios
  Y cambio "<name>", "<address>", "<web>" y "<email>"  
  Entonces me muestra el mensaje de error que "faltan esos datos"

  Ejemplos: faltan datos
   | name | address              | web         | email            | 
   |      | Av. Siempre Viva 742 | www.web.com | contact@acme.org |
   | ACME |                      | www.web.com | contact@acme.org |
   | ACME | Av. Siempre Viva 742 | www.web.com |                  |
  
  Ejemplos: datos muy cortos
   | name | address              | web         | email            | 
   | A    | Av. Siempre Viva 742 | www.web.com | contact@acme.org |
   | AC   | Av. Sie              | www.web.com | contact@acme.org |
   | AC   | Av. Siempre Viva 742 | www.web.com | m@g.ar           |
   | AC   | Av. Siempre Viva 742 | .ws         | contact@acme.org |

  Ejemplos: datos muy largos
   | name                                                                                                                                                                                                                                                        | address              | web         | email            | 
   | 251CARACTERESAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | Av. Siempre Viva 742 | www.web.com | contact@acme.org |
   | ACME  | 251CARACTERESAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA              | www.web.com | contact@acme.org |
   | AC   | Av. Siempre Viva 742 | 251CARACTERESAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | contact@g.ws          |
   | AC   | Av. Siempre Viva 742 | www.web.com | 251CARACTERESAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA          |
 
Escenario: nombre unico
  Dado existe una Organización: "ACME", "Av. Siempre Viva 742", "ong.org.ar" y "info@email.com"
  Y existe una Organización: "ACME-ARGENTINA", "Av. Siempre Viva 742", "ong.org.ar" y "info@email.com"
  Y que estoy en la pantalla de Administración de Organizaciones
  Cuando yo edito otra Organización
  Y cambio "ACME", "6925 Hollywood Blvd, Hollywood, CA 90028, Estados Unidos", "ong.org.ar" y "info@email.com" 
  Entonces me muestra el mensaje de error que "ese nombre ya está siendo utilizado"

@to-do
Escenario: agregar imagen que faltaba

@to-do
Escenario: cambiar la imagen
#  Dado que ya tiene una imagen
#  Y quiero subir una nueva
#  Entonces le cambia el nombre a la anterior
#  Y sube actualiza a la nueva

# si la foto tiene una extensión distinta, entonces hay que borrar la que tiene la vieja extensión, porque no la pisa.