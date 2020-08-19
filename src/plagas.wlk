class Plaga {
	var property poblacion // int
	
	method transmiteEnfermedad() = poblacion >= 10 // Booleano
	
	method atacar(elemento){ //(elem: huerta, hogar, mascota)
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio // int

	method nivelDanio() { // // return int
		return poblacion / 2 
	}

	override method transmiteEnfermedad() { // Booleano
		return super() and pesoPromedio >= 10 
	}

	override method atacar(elemento) { //(elem: huerta, hogar, mascota)
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	method nivelDanio() { // return int
		return poblacion 
	}

	override method transmiteEnfermedad() { // Booleano
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

	method nivelDanio() = poblacion * 2 // return int

}

class PlagaGarrapatas inherits PlagaPulgas {

	override method atacar(elemento) { //(elem: huerta, hogar, mascota)
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

