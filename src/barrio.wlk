class Barrio {

	const property elementos = []   // lista 

	method agregarElemento(elemento) {  // (elemento : huerta , mascota, hogar) no devuelve nada 
		elementos.add(elemento)
	}

	method sacarElemento(elemento) // () { // (elemento : huerta , mascota, hogar) no devuelve nada 
		elementos.remove(elemento)
	}

	method elementosBuenos() {    // devuelve un numero
		return elementos.count{ e => e.esBueno() }
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() } // devuelve un numero

	method esCopado() {   // bool
		return self.elementosBuenos() > self.elementosMalos()
	}

}

