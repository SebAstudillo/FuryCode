require 'sinatra'
@@semilla = "a"
@@letra 
get '/' do
    erb :index
end

post '/' do
   @letra = params[:letra]
   if (@@semilla == @letra)
	@mensaje = "Hay coincidencia"
   end
    erb :index
    
end

