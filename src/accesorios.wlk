object farolito {
	method peso(){return 0.5}
	method carga(){return 0}
	method tieneLuz(){return true}
}

class Canasto {
	var property volumen
	var property tieneLuz = false
	method peso(){ return volumen / 10}
	method carga(){ return volumen * 2}
}

class MorralDeBici {
	var property largo
	var property ojoDeGato
	var property peso = 1.2
	method carga(){ return largo / 3}
	method tieneLuz(){ return ojoDeGato }
}
