require 'sinatra'
require './lib/juego'
@@j = Juego.new

get '/' do
    erb :index
end

post '/' do
   @letra = params[:letra]
	r = @@j.buscarletra(@letra)  
	@intentos = @@j.intentos
	if (r != false)
		@mensaje = "Hay coincidencia"
   	end
	if(@@j.isFinJuego)
		@mensaje = "PERDISTE!!!"
	end
    erb :index
    
end

