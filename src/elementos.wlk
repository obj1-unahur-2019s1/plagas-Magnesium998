import plagas.*

class Hogar {
	var property mugre 
	var property confort
	
	method esBueno() {return mugre <= confort / 2 }
	method recibirAtaque(plaga) {mugre = plaga.nivelDeDanio()}
}


class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() {return reguladorDeHuerta.nivelMinimo()}
	method recibirAtaque(plaga) {capacidadDeProduccion -= (plaga.nivelDeDanio() * 0.1) 
								 if (plaga.transmitirEnfermedades()) {capacidadDeProduccion -= 10} }
	
}

object reguladorDeHuerta {
		var property nivelMinimo = 20
	}


class Mascota {
	var property nivelDeSalud
	
	method esBueno() {return nivelDeSalud > 250}
	method recibirAtaque(plaga) {if (plaga.transmitirEnfermedades()) {nivelDeSalud -= plaga.nivelDeDanio()} }
}


class Barrio {
	var property elementos = []
	
	method esCopado() {return self.elementosBuenos() > self.elementosMalos()}
	
	method elementosBuenos() {return elementos.count{e => e.esBueno()}}
	
	method elementosMalos() {return elementos.size() - self.elementosBuenos()}
	
	method recibirAtaque(plaga) {}
}