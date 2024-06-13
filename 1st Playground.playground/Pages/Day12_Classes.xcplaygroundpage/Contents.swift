//LAS CLASES SON INHERENTES , PUEDO CREAR UNA DENTRO DE OTRA
//SWIFT NO GENERA INIZIALIZADORES DE CLASES
// SI COPIO UNA INSTACIA DE LA CLASE Y CAMBIA LA INSTANCIA ORIGINAL O LA COPIA , AMBAS VAN A CAMBIAR
// EXISTE UN DESINIZIALIZADOS
// A PESAR DE QUE SEAN CONSTANTES SE PUEDE CAMBIAR LAS PROPIEDADES DE LAS INSTANCIAS

import Foundation


//HOW TO MAKE ONE INHERIT CLASS FROM ANOTHER

class employee {
    let hours: Int
    
    init(hours:Int) {
        self.hours = hours
    }
    
    //You cal also share methods
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
    
}


class Developer: employee{
    
    func work(){
        print("I'm writing code for \(hours) hours")
    }
    
}


class Manager: employee{
    
    func work(){
        print("I'm going to meetings for \(hours) hours")
    }
    
}
//Both are inherit clases ,both are employee type , that's why they can use hours property,its is defined locally


let yo = Developer(hours: 20)
let el = Manager(hours: 30)

yo.work()
el.work()

//calling shared method

let camilo = Developer(hours:30)
camilo.printSummary()

//if a child class wants to change a method from its father it must have a keyword
//                 OVERRIDE
