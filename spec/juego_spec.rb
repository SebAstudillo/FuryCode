require './lib/juego'
=begin
describe "Juego" do
	it "Instancio el objeto Juego y llamo una palabra" do	
	j= Juego.new
	palabra = j.palabra
	expect(j).to eq "a"
	end	
end
=end
describe "Juego" do
	it "Ingreso la letra z y espero resultado falso" do
		j= Juego.new
		r = j.buscarletra("z")
		expect(r).to eq false
	end
end 
describe "Juego" do
	it "Ingreso 7 veces la letra z y como resultado Fin de Juego" do
		j= Juego.new
		7.times {j.buscarletra("z")}
		r= j.isFinJuego()
		expect(r).to eq true
	end
end 
