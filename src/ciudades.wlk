object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	method teEncontro(alguien){
		game.say(alguien, "Visité VG")
	}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
	method teEncontro(alguien){
		game.say(alguien, "Visité BA")
	}
}
