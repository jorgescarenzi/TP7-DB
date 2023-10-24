# TP7-DB

Jenkins Pipeline  mysql

contenido:
- Scripts : SQL script para agregar elementos a mysql .El mismo corre de acuerdo a dockerfile.
- Dockerfile : especificaciones para crear base de datos utilizando imagen mysql como base.
- Checkport : script para validar si el puerto (3306 en este caso) se encuentra en uso.
- checkrunning: script para validar si no hay otra instancia con el mismo nombre corriendo.
- Jenkinsfile : Archivo de Jenkins para la ejecucion de stages.

  nota:Si bien  hay un stage de autenticación hacia github y dockerhub ambos repositorios son publicos.
