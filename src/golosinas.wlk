object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	
	var peso = 300
	// definir
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	// definir
	var peso = 5
	// definir
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso -= 1}
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	// definir
	var peso = 7
	// definir
	method precio() { return 2	 }
	method peso() { return peso }
	method mordisco() { if(peso > 2){peso = peso * 0.9}}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	// definir
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { 
		if(peso > 70){
			peso = peso * 0.5
		}else {
			peso = peso * 0.75
		}	
	}
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial = 70	
	var pesoActual = 70
	
	/* al principio, el peso actual coincide con el inicial */
	method peso(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() { return 0.5 * pesoInicial }
	method peso() { return pesoActual }
	method mordisco() { pesoActual -= 2}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() {return golosinaInterior.precio() + 2}
	method peso() {return golosinaInterior.peso() +  pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) {pesoBanio -= 2}
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var listaSabores = ["frutilla","chocolate", "naranja"]
	var peso = 5
	var libreGluten = false
	var bitte = 0
	var gusto = listaSabores.first()
	// definir
	method precio() { return if(libreGluten){7}else{10}}
	method peso() { return peso }
	method mordisco() {	bitte ++}
	method gusto() { return listaSabores.get(bitte % listaSabores.size())}
	method libreGluten() { return libreGluten }
	method libreGluten(valor) {libreGluten = valor}
}

