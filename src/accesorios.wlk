object farolito {
	method peso(){return 0.5}
	method carga(){return 0}
	method tieneLuz(){return true}
}

class Canasto {
	var property volumen
	const property tieneLuz = false
	method peso(){ return volumen / 10}
	method carga(){ return volumen * 2}
}

class MorralDeBici {
	var property largo
	var property ojoDeGato
	const property peso = 1.2
	method carga(){ return largo / 3}
	method tieneLuz(){ return ojoDeGato }
}

/*
 ------------- 5 ---------------
Habria que  agregar nuevos objetos que entiendan los mismos mensajes que los creados anteriormente asi podemos
mantener el polimorfismo.
*------------- 5 ---------------
 */
