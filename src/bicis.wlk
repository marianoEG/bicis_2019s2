import accesorios.*
class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	method altura(){ return rodado * 2.5 + 15}
	method velocidadCrucero(){ return if (largo > 120){rodado + 6} else {rodado + 2}}
	method carga(){return accesorios.sum({accesorio => accesorio.carga()})} 
	method tieneLuz(){ return accesorios.any({accesorio => accesorio.tieneLuz()})}
	method accesoriosLivianos(){return accesorios.filter({accesorio=>accesorio.peso()<1}).size()}
	method peso(){ return rodado/2 + accesorios.sum({accesorio=>accesorio.peso()})}
}
