# INCIDENTS - incidents_app
Simple aplicación de requerimientos con Ruby On Rails

* Requerimientos
  - Ruby `3.0.0`
  - Rails `6.1.0`
  - Postgresql

* Software
  - [RVM](https://rvm.io/)
  - [Postgres App](https://postgresapp.com/)

* Instalación de dependencias
  - Instalar ruby v3.0.0: `rvm install 3.0.0`
  - Instalar rails dependencias `bundle install`
  - Instalar node dependencias: `yarn`

* ENV  variables
  - En el file .env colocar las credenciales de tu usuario en postgresql
    - PG_USERNAME= `username`
    - PG_PASSWORD= `password`
  - Para que pueda correr la aplicación se necesita que tengas la db de postgresql con el siguiente nombre: `incidents_development`

* Iniciar la aplicación
  - Ejecutar el siguiente comando `rails s`
  - Para encontrar la aplicación, señale en el navegador [http://localhost:3000](http://localhost:3000)
