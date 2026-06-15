import autos.*

object trafic {
  var property  interior = comodo
  var property motor = pulenta  

method capacidad() = interior.capacidad()

method velocidadMaxima() = motor.velocidadMaxima()

method peso() = 4000 + motor.peso() + interior.peso()

method color() = "blanco" 
}


object comodo  {
  method  capacidad() = 5 
  method peso() = 700  
}

object popular {
 method capacidad() = 12 
  method peso() = 1000  
  }

object pulenta {
  method  velocidadMaxima() = 130
  method peso() = 800  
}

object bataton {
   method velocidadMaxima() = 80
  method  peso() = 500  
}
