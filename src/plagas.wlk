import elementos.*

class PlagaPulgaYGarrapata inherits Plaga{
	method nivelDeDanio() = poblacion * 2
}

class Plaga {
	var property poblacion
	method transmitirEnfermedades() = poblacion >=10
	method atacar(elemento){poblacion *= 1.1
		                    elemento.recibirAtaque(self)
	}
}

class PlagaCucaracha inherits Plaga {
    var property pesoPromedio
	
	method nivelDeDanio() = poblacion / 2
	override method transmitirEnfermedades() = super() and pesoPromedio >= 10
	override method atacar(elemento) { super(elemento) ; pesoPromedio += 2}
}


class PlagaPulgas inherits PlagaPulgaYGarrapata{
}


class PlagaMosquitos inherits Plaga{	
	method nivelDeDanio() = poblacion
	override method transmitirEnfermedades() = super() and (poblacion % 3 == 0)
}


class PlagaGarrapatas inherits Plaga{
	override method atacar(elemento){poblacion *= 1.2}
}