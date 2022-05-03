# Configurar el git y github multiplayer

#En un futuro lo pasaré a un rmd


# Paso previo: conectar Rstudio con Git y Github --------------------------

'
Descargar R v4.2.0
Descargar RStudio
Descargar Rtools42
Descargar Git

Ejecutar los archivos e ir a RStudio

Crearse una cuenta en Github y tenerla abierta en el buscador Chrome

Presentarse a Git
'
#Crear un R proyect desde cero

#paquetes importantes
pacman::p_load(devtools, usethis, tidyverse)

#presentarse a git // my name is...
use_git_config(user.name = "Santiago Sotelo", user.email = "sotelog001@gmail.com")#el correo debe ser el mismo de tu github account

usethis::use_git()
#Primero decir "No" commit cambios
#Luego sugerirá reiniciar R y le damos que "Sí"

#presentarse a github
'Necesitamos generar un token para conectarnos con Github'
usethis::create_github_token(description = "nombre_de_mi_token")#se debería abrir una pestaña en tu github web, dale check a las casillas y mejor no ponerle fecha de expiración.

#Luego entremos a r environ para poner nuestro token y luego restart
usethis::edit_r_environ()#Aca insertamos en una línea: GITHUB_TOKEN="token largo"
#Luego restart

usethis::use_github()

#A mi luego me apareció una pantalla de github donde tenía que poner mi usuario y contraseña. Luego ya estas

#Commit, y luego Push


# Solo play ---------------------------------------------------------------

'
Crear un R proyect in a New Session
'
usethis::use_git()
#Iterar entre commit, push y Github Web


# Multiplayer Collaborative -----------------------------------------------

'
En esta versión de Multiplayer permite añadir personas a tu repo de github para que editen directamente

Añadir o ser añadido colaborar del github repo

En r ir a crear r project control de versiones Git y copiar el url del proyecto. Los cambios serán directos.
'


# Multiplayer pull request ------------------------------------------------

'
En esta version de Multiplayer cuando otras personas quieren hacer cambios serán introducidos como pull request que deben ser admitidos
por el creador del repo.

Ir a Github web y fork el repo en el que quieres trabajar.

Luego crear un r project version control y copiar el url del repo forkeado.

Hacer cambios, commit, push.

Ir a Github web y verás el cambio y ponerlo como un pull request y mandarselo al creador del repo, depende de esta persona si aceptar tu cambio o no.
'



