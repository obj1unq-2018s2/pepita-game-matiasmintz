import comidas.*
import ciudades.*
import pepita.*

object roque {
	var property comida = null
	const property imagen = "jugador.png"
	var property position = game.at(5,1)
	var property posicionAleatoria = game.at(1.randomUpTo(10), 1.randomUpTo(10))

	// Al encontrar una comida, Roque la levanta y se la guarda.
	// Si ya tenía una suelta la anterior.
	method teEncontro(alimento){
		if (comida == null){
			comida = alimento.agarrarComida()
		}
		
	}
	
	// Al encontrar a pepita, Roque le entrega la comida que tiene
	// y pepita se la come. Luego, hacer aparecer de nuevo la comida
	// en un lugar al azar del tablero
	method alimentar(alguien){
		if (comida != null){
			alguien.come(comida)
			game.addVisualIn(comida, posicionAleatoria)
			
		}
	}
}
