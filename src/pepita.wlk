import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	
	// Hacer que pepita no haga nada si le indico que vuele a la ciudad en la que ya está.
	// En cambio usar el mensaje 'say' para que pepita diga "Ya estoy en <nombre de la ciudad>!".
	
	
	
	// Pepita tampoco debe volar si no le alcanza la energia y en cambio usamos el mensaje
	// 'say' para decir "Dame de comer primero!".
	
	// Agregar imágenes de pepita que cambien en función de la energia que tiene. 
	// Si tiene energia < 10 pepita está muy cansada, usar una imagen acorde.
	// Si tiene energia > 100 pepita está gorda
	// En caso contrario podemos mantener la imagen actual.
}
