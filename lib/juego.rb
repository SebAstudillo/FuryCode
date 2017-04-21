

class Juego
	
	def initialize
		@palabra = "a"
		@intentos = 0
	end
	def buscarletra(l)
		if @palabra != l
			@intentos += 1
			return false
		end 
	end
	def isFinJuego()
		if intentos() == 7
			return true
		end 
	end
        def intentos()
		return @intentos
        end

end
