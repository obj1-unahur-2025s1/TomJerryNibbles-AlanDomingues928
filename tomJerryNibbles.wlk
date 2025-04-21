object tom {
    var energia = 50
    method gato()= true
    method energia() = energia
    method energia(cantidad) {energia = cantidad}
    method velocidadMaxima()= 5 + (energia/ 10)
    method distanciaRecorrida(distancia){
        energia = energia - (distancia / 2)
    }
    method comerRaton(unraton){
        energia = energia + (unraton.peso() + 12)
    } 
    method puedeCazar(distancia) = energia >=distancia
    method Cazar(unRaton, distancia){
        if (self.puedeCazar(distancia)){
            energia = energia - distancia
            self.comerRaton(unRaton)
        }
    }
}

object jerry {
  var edad = 2 
  method edad()= edad
  method peso() = edad * 20
  method edad(unaEdad) {edad = unaEdad}
  method raton()= true
}

object nibbles {
  method peso() = 35
  method raton()= true
}

// Inventar otro ratón
object pulgar {
    method peso()= 50
    method raton()= true
}