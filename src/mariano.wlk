import golosinas.*

object mariano {
	// para este objeto no damos pistas
	var golosinas = []
	var golosinasDesechadas = []
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) { golosinas.add(golosina) }
	method comprarVarias(glista) { golosinas.addAll(glista) }
	method vaciarBolsa() {golosinas.clear()}
	method quitar(golosina) {golosinas.remove(golosina) golosinasDesechadas.add(golosina)}
	method cantidadGolosinas() {return golosinas.size()}
	method tieneLaGolosina(goo) {return golosinas.contains(goo)}
	method probar() {golosinas.forEach({
		e => e.mordisco()
	})}
	
	method hayGolosinaSinTak() {return golosinas.any({a => a.libreGluten()})}	
	method preciosCuidados() {return golosinas.all({
		r => r.precio() <= 10
	})}
	
	method golosinaDeSabor(unSabor) {return golosinas.find({
		g => g.gusto() == unSabor
	})}
	
	method golosinasDeSabor(unSabor) {return golosinas.filter({
			g => g.gusto() == unSabor
		})		
	}
	
	method sabores(){return golosinas.map({
			g => g.gusto()
		}).asSet()
	}
	
	method golosinaMasCara() {
		return golosinas.max({
			g => g.precio()
		})
	}
	
	method precioGolosinaMasCara() {
		self.golosinaMasCara().precio()
	}
	
	method pesoGolosinas() {
		return golosinas.sum({
			g => g.peso()
		})
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		golosinasDeseadas.asSet().difference(golosinas.asSet())
	}
	
	
	method gustosfaaltantes(gustosDeseados){
		gustosDeseados.asSet().difference(self.sabores())
	}
	
	
	method otraGolosinaMasCara() {
		golosinas.map({
			g => g.precio()
		}).max()
	}
	
	
	method gastoEnUnSabor(unSabor){
		self.golosinasDeSabor(unSabor).sum({
			g => g.precio()
		})
	}
	
	method precioGolosnaSaborMasCara(unSabor){
		self.golosinasDeSabor(unSabor).max({
			g => g.precio()
		}).precio()
	}
	
	method cantidadGolosnasDeUnSabor(unSabor){
		return self.golosinasDeSabor(unSabor).size()
	}
	
	method saborMasPopular(){
		return self.sabores().max({
			s => self.cantidadGolosnasDeUnSabor(s)
		})
	}
	
	method comproDesecho(golosina){
		return golosinasDesechadas.contains(golosina)
	}
	
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	
	method probarGolosinas() { /* completar */ }
}

