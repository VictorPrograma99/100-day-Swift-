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
    
    override func printSummary() {
        print("employee has worked \(hours - 5) hours")
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

el.printSummary()
//if a child class wants to change a method from its father it must have a keyword
//OVERRIDE

//if you sure the class will not have children you write
// funal class [name]()



//-----------------------------------------------------------------_//
/*          We can Add initializers for inherit clasess             */
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric:Bool ,isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
    final func printCar(){
        if isElectric == false{
            print("gas vehicle")
        }
    }
}


//If child class has no own initializer it will inherit the parent initializar

let teslaCar = Car(isElectric: false, isConvertible: false)
teslaCar.printCar()





/*
                        HOW TO COPY CLASSES
 */
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

let user1 = User()
let user2 = user1.copy()
user2.username="MAnuel"
print(user1.username)
print(user2.username)



/*
            HOW TO CREATE A DESINITIALIZER FOR A CLASS
 
 Don't use func keyword
 Desinit.. does't retunr a value or take a parameter
 runs when the last copy of the instant class is destoyed
 we don't call them directly
 structures has no desinitialicers
 
 */
class Userdes {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}



var userdes:Userdes? = Userdes(id: 1 )
userdes=nil


/*
            HOW TO WORK WITH VARIABLES INSIDE CLASSES
 */
