require 'sinatra'
require './lib/juego'

@@semilla = "a"
@@letra 
get '/' do
    erb :index
end

post '/' do
   @letra = params[:letra]
	j= Juego.new
	r = j.buscarletra(@letra)  
	@intentos = j.intentos
	if (r != false)
		@mensaje = "Hay coincidencia"
   	end
    erb :index
    
end

