/** First Wollok example */
object wollok {
	method howAreYou() {
		return 'I am Wolloktastic!'
	}
}
//Determinar si ese paquete puede ser entregado por un mensajero en un determinado destino

object paquete {
	var pago = true
	var destino = puenteBrooklyn
	method estaPago(){
		return pago
	}
	method estaPago(estado){
		pago = estado
	}
}

object puenteBrooklyn {
	method comprobarDestino(unMensajero){
		return unMensajero.peso()<1000
	}
}

object laMatrix {
	method comprobarDestino(unMensajero){
		return unMensajero.puedeLlamar()
	}
}

///---MENSAJEROS---///

object chuckNorris {
	method puedeLlevar(unPaquete, unDestino){
		return unPaquete.estaPago() and unDestino.comprobarDestino(self)
	}
	method peso(){
		return 900
	}
	method puedeLlamar(){
		return true
	}
}

object neo {
	var creditoCelular = true
	method puedeLlevar(unPaquete, unDestino){
		return unPaquete.estaPago()
	}
	method peso(){
		return 0
	}
	method puedeLlamar(){
		return creditoCelular
	}
	method creditoCelular(estado){
		creditoCelular = estado
	}
}

object lincolnHawk {
	var peso
	method puedeLlevar(unPaquete){
		return unPaquete.estaPago()
	}
	method puedeLlamar(){
		return false
	}
	method peso(_peso){
		peso = _peso
	}
	method peso(){
		return peso
	}
}

object bici {
	method peso(){
		return 10
	}
}

object camion {
	var peso = 500
	var cantAcoplados = 0
	method pesoAcoplados(){
		return cantAcoplados*500
	}
	method peso(){
		return peso + self.pesoAcoplados()
	}
	method cantAcoplados(_cantAcoplados){
		cantAcoplados = _cantAcoplados
	}
}