import wollok.game.*

object rival1 {
	const property image = "./asset/rival1.png"
	var property position = game.at((0.randomUpTo(game.width())).truncate(0), (0.randomUpTo(game.height())).truncate(0)) //game.at = (x,y)
	var previousPosition = position
	
	method chocarCon(pacMan){
		position = game.at((0.randomUpTo(game.width())).truncate(0), (0.randomUpTo(game.height())).truncate(0)) //game.at = (x,y)
	}
	method acercarseA(personaje){
		const otroPosicion = personaje.position()
		
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
}

object rival2 {
	const property image = "./asset/rival2.png"
	var property position = game.at((0.randomUpTo(game.width())).truncate(0), (0.randomUpTo(game.height())).truncate(0))
	var previousPosition = position
	 //game.at = (x,y)
	method chocarCon(pacMan){
		position = game.at((0.randomUpTo(game.width())).truncate(0), (0.randomUpTo(game.height())).truncate(0)) //game.at = (x,y)
	}
	
	method acercarseA(personaje){
		const otroPosicion = personaje.position()
		
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		// evitamos que se posicionen fuera del tablero
		
		newX = newX.max(0).min(game.width() - 1)
		newY = newY.max(0).min(game.height() - 1)
		previousPosition = position
		position = game.at(newX, newY)
	}
}