import bicis.*
import accesorios.*
class Deposito {
	var property bicicletas = []
	method bicisRapidas(){return bicicletas.filter({bici=>bici.velocidadCrucero()>25})}
	method marcas(){return bicicletas.map({bici=>bici.marca()}).asSet()}
	method esNocturno(){return bicicletas.all({bici=>bici.tieneLuz()})}
	method tieneBiciQueCarga(cuanto){return bicicletas.any({bici=>bici.carga()>cuanto})}
	method marcaMasRapida(){return bicicletas.max({bici=>bici.velocidadCrucero()}).marca()}
	method cargaBicisLargas(){return bicicletas.filter({bici=>bici.largo()>170}).sum({bici=>bici.carga()})}
	method bicisSinAccesorios(){return bicicletas.filter({bici=>bici.accesorios().isEmpty()}).size()}
	method biciCompanera(bicicleta){
		return bicicletas.filter({bici=>bici.marca() == bicicleta.marca() and (bici.largo()-bicicleta.largo()).between(-10,10) 
			and (bici != bicicleta)})
	}
}
