import autos.*

//etapa2
class Pedido {
  var property distanciaARecorrer
  var property tiempoDeViaje // timepomaximo de viaje(?)
  var property cantidadDePasajeros
  var property coloresIncompatibles 

  method velocidad() =  distanciaARecorrer/tiempoDeViaje // indica la velocidad requerida de un pedido haciendo: cantidekm/tiempo

 method puedeSatisfacerPedido(unAuto) =
    unAuto.velocidadMaxima() >= self.velocidad() + 10 && // el auto debe ir al menos 10 km/h más rápido que la velocidad requerida por el pedido
    unAuto.capacidad() >= cantidadDePasajeros && // el auto debe tener lugar para todos los pasajeros
    !coloresIncompatibles.contains(unAuto.color()) // el color del auto no debe estar en la lista de colores incompatibles, tá preguntando:"¿El color del auto está en la lista de colores prohibidos?"
  
   method acelerar() {
    tiempoDeViaje = tiempoDeViaje  -1  }
  
  method relajar()  { tiempoDeViaje = tiempoDeViaje + 1   } 

}

