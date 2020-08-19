class Hogar {

	var property nivelMugre    // numero
	var property confort		// numero

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2  // BOOL

	method fueAtacado(plaga) {   // (plaga : PlagaMosquito, PlagaGarrapata, PlagaPulga, PlagaCucaracha) no devuelve nada
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud  // numero

	method fueAtacado(plaga) {  // (plaga : PlagaMosquito, PlagaGarrapata, PlagaPulga, PlagaCucaracha) no devuelve nada
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	method esBueno() = nivelSalud > 250  // bool

}

class Huerta {

	var property capacidadProduccion // numero

	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()   // bool
	}

	method fueAtacado(plaga) {     // (plaga : PlagaMosquito, PlagaGarrapata, PlagaPulga, PlagaCucaracha) no devuelve nada
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima // numero

}

