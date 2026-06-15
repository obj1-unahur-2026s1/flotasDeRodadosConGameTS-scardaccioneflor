import pedidos.*

class Dependencia {
  const rodados = []

  var property cantidadDeEmpleados
  const pedidos = [] 

  method agregarAFlota(rodado) = rodados.add(rodado) // agrega autos a la lista

  method quitarDeFlota(rodado) = rodados.rem(rodado) // saca autos de la lista
 
  method pesoTotalFlota() = rodados.sum({rod => rod.peso()}) // suma total del peso de los autoa de la lista, por el sum

  method estaBienEquipada() = rodados.size() >= 3 && rodados.all({rod => rod.velocidadMaxima() >= 100}) // indica que esta bien indicada si la cantidad de autos en la lista es >= a 3 y que de los rodados(rod) la velocidaMAx sea <=100

  method capacidadTotalEnColor(unColor) =   rodados.filter({rod => rod.color() == unColor}).sum({rod => rod.capacidad()}) // filtra de la lista rodados  qe son de color *color* y suma sus capacidades

  method colorDelRodadosMasRapido() = rodados.max({rod => rod.velocidadMaxima()}).color() /// esto primero te dice el de la velMax y despues te dice el color de eso

  method capacidadFaltante() = cantidadDeEmpleados - rodados.sum({rod => rod.capacidad()})  // esta hace la cant de empleados menos la suma de la capacvidad de todos los rodados  de la lista rodados

  method esGrande() =  cantidadDeEmpleados >= 40 && rodados.size() >= 5 // indica si es grande cuando la csntidad de empleados es >= 40 y qe la cantidad de autos en rodados sea >=5
 //etapa3
  method agregarPedidos(unPedido) = pedidos.add(unPedido)

  method quitarPedido(unPedido) =  pedidos.remove(unPedido)
 
  method totalDePasajerosEnLosPEdidos() = pedidos.size() 

 //method pedidosNoSatisfechos() = pedidos.filter({ped =>   rodados.none({rod => rod.puedeSatisfacerPedido(ped)})})
// NONE- Significa: "NO hay ninguno que cumpla?” (. true → si ninguno cumple; .false → si al menos uno cumple)

  method pedidosNoSatisfechos() =
  pedidos.filter({ped =>
    rodados.none({rod => rod.puedeSatisfacerPedido(ped)})
  })

method todosTienenEsteColorIncompatible(unColor) = pedidos.all({ped => ped.coloresIncompatibles().contains(unColor)})
//“Para todos los pedidos, el color está dentro de sus colores incompatibles


}
