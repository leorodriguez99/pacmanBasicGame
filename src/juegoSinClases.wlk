import wollok.game.*

object pacman {
	var property position = game.origin()
	var property image = "pacman.png"
	var vidas = 3

	method juegoTerminado() = vidas == 0
	
	method resetPosition() {
		position = game.origin()
	}
	
	method chocarCon(rival) {
		// sin dudas perdí una vida
		vidas = vidas - 1
		// reset de las posiciones
		self.resetPosition()
		rival.resetPosition()
		// agregamos la validación del juego terminado en pacman
		if (self.juegoTerminado()) {
			game.stop()
		}
	}
}

object fantasma1 {
	var property position = game.at(3, 3)
	var previousPosition = position

	method image() = "rival1.png"

	method acercarseA(personaje) {
		var otroPosicion = personaje.position()
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
	
	method resetPosition() {
		position = game.at(1, 1)
	}
	
	method chocarCon(otro) {
		self.resetPreviousPosition()
	}
	
	method resetPreviousPosition() {
		position = previousPosition 
	}
}

object fantasma2 {
	var property position = game.at(4, 4)
	var previousPosition = position

	method image() = "rival2.png"

	method acercarseA(personaje) {
		var otroPosicion = personaje.position()
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
	
	method resetPosition() {
		position = game.at(2, 2)
	}
	
	method chocarCon(otro) {
		self.resetPreviousPosition()
	}
	
	method resetPreviousPosition() {
		position = previousPosition 
	}
}

object fantasma3 {
	var property position = game.at(5, 5)
	var previousPosition = position

	method image() = "rival3.png"

	method acercarseA(personaje) {
		var otroPosicion = personaje.position()
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
	
	method resetPosition() {
		position = game.at(3, 3)
	}
	
	method chocarCon(otro) {
		self.resetPreviousPosition()
	}
	
	method resetPreviousPosition() {
		position = previousPosition 
	}
}

object fantasma4 {
	var property position = game.at(6, 6)
	var previousPosition = position

	method image() = "rival4.png"

	method acercarseA(personaje) {
		var otroPosicion = personaje.position()
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
	
	method resetPosition() {
		position = game.at(4, 4)
	}
	
	method chocarCon(otro) {
		self.resetPreviousPosition()
	}
	
	method resetPreviousPosition() {
		position = previousPosition 
	}
}

object cherry {
	var property image = "cherry.png"
	var property position = game.center()
}
