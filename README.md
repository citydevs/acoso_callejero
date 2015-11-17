# ALLHANDS
____
Aplicación para la optimización de juntas.

Estatus:

	En planeación y desarrollo
	
Lenguajes:

	Ruby
	JavaScript
	CSS
	HTML

Permite crear una interacción entre los participantes de una llamada dandote las siguinetes posibilidades:

* Registrarte por medio de Facebook.

* Crear un AllHands o unirte a uno: 
	* Arm (El que crea un AllHands)
	* Hand (El que se une a un AllHands)
	
* Como Arm puedes:
	* Aisgnar tiempo para que cada hand hable, ya sea 3, 5 o 10 min.
	* Manejar o seder el manejo del reloj, que es el que permite que los hands intervengan. 
	* Puede terminar un AllHands.
* Como Hand puedes:
	* Unirte a una llamada, ingresando el ID de esta.
	* Dar un thumb-up a alguno de los otros hands (2 por llamada)
	* salir del AllHands. 
	
##Instalación:

Puedes acceder al repositorio en [GitHub](https://github.com) de [AllHands](https://github.com/mikesaurio/AllHands)

Clonamos el repositorio:

    git clone https://github.com/mikesaurio/AllHands.git
        
Instalamos y actualizamos las gemas:

	bundle install
	
Creamos las migraciones de la base de datos:

	rake db:create && rake db:migrate 
		    

##¿Preguntas o problemas? 

Mantenemos la conversación del proyecto en nuestra página de problemas [issues](https://github.com/mikesaurio/AllHands/issues). Si usted tiene cualquier otra pregunta, nos puede contactar por correo a <mikesaurio@civica.digital> o a traves de [@yosoymikesaurio](https://twitter.com/yosoymikesaurio).

##Licencia

Licensed under the Apache License, Version 2.0 Read the document [LICENSE](http://www.apache.org/licenses/LICENSE-2.0) for more information

Creado en [Cívica Digital](http://www.civica.digital), 2015.
