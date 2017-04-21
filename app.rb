require 'sinatra'

get '/' do
    erb :index
end

post '/' do
   @letra = params[:letra]
    erb :index
    
end

