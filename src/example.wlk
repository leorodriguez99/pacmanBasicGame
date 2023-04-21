import wollok.game.*

object pacman {
	const property image = "pacman.png"
	var property position = game.origin() // es la celda 0;0
    var property vida = 3

	method perderVida() {
		vida = 0.max(vida -1)      //Resta una vida. Nunca puede ser negativa
		position = game.origin()	
	}
	method vida(){
		return vida
	}
	
	method chocarCon(unFatasma){
		self.perderVida()           //Resta una vida. Valida que no sea negativa
		game.say(pacman, "Vida actual: " + vida.toString())
        if (self.murioPacMan()){
			game.stop()
		}
		contador.actualizar()
	}
	method murioPacMan(){
		return vida == 0
	}
	
}
object contador {
	var property position = game.at(game.width()-1,game.height()-1)
	var text = pacman.vida()
	
	method text() = text.toString()
	
	method actualizar(){
		text = pacman.vida()
	}
}


