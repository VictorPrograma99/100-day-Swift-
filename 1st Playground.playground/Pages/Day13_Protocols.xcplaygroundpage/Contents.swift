//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
 resumir que los protocolos sirven como estandares donde podemos fijar varios bjetos relacionados , por ejemplo un protocolo de vehiculo donde puedo decribir atributos como : llantas, pasajeros , nombre y metodos para calcular el tiempo que varian el vehiculo
 */

//no podemos tener implementaciones dentro de los protocolos
protocol Vehiculo {

    var name:String {get}
    var currentPassagers:Int {get set }
    func estimateTime(for distance:Int)->Int
    func travel(distance: Int)
}


struct Car : Vehiculo{
    
    var name = "Car"
    var currentPassagers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance) Km")
    }
    
    func openSunroof(){
        print("it's a Nice Day")
    }
}

struct Bicycle : Vehiculo{
    
    
    
    var name = "Bicycle"
    var currentPassagers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) Km")
    }
    
    
}


func conmute(distance: Int, using Vehiculo:Vehiculo){
    if Vehiculo.estimateTime(for: distance)>100{
        print("That's too slow ,I'll try another vehicule")
    }else{
        Vehiculo.travel(distance: distance)
    }
}


let car = Car()
conmute(distance: 100000, using: car)

let bike = Bicycle()
conmute(distance: 100 ,using: bike)
//Swift va a saber que metodos funcionan para el vehiculo , porque se le asigno el tipo de vehiculo al momento de crear la constante


//podemos agregar si las propiedades son unicamente de escritura o de lectura ,con {set o get}




//Thanks to protocols we can create an array of vehicules and get travel estimates

func getTravelEstimates(vehiculos: [Vehiculo],distance : Int){
    for vehiculo in vehiculos {
        let estimate = vehiculo.estimateTime(for: distance)
        print("\(vehiculo.name) estimates \(estimate) hours for travel \(distance)Km ")
    }
}


getTravelEstimates(vehiculos: [car,bike], distance: 150)
