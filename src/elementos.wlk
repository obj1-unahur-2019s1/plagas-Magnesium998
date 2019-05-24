class Hogar {
	var property mugre 
	var property confort
	
	method esBueno() {return mugre <= confort / 2 }
}


class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() {return reguladorDeHuerta.nivelMinimo()}
	
}

object reguladorDeHuerta {
		var property nivelMinimo = 20
}


class Mascota {
	var property nivelDeSalud
	
	method esBueno() {return nivelDeSalud > 250}
}


class Barrio {
	var property elementos = []
	
	method esCopado() {return self.elementosBuenos() > self.elementosMalos()}
	
	method elementosBuenos() {return elementos.count{e => e.esBueno()}}
	
	method elementosMalos() {return elementos.size() - self.elementosBuenos()}
}