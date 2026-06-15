class ChevroletCorsa {
  var property color

  method capacidad() = 4

  method velocidadMaxima() = 150

  method peso() = 1300
}

class RenaultKwid {
  var property tieneTanqueAdicional = true

  method capacidad() = if(tieneTanqueAdicional) 3 else 4

  method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110

  method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0

  method color() = "azul"
}


class AutoEspecial {
  const property capacidad
  const property velocidadMaxima
  const property peso
  const property color 
}