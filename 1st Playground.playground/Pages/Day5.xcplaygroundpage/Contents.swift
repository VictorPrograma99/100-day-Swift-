import Foundation
// ----------------check conditionals , true or false
var condicion = true

if condicion {
    
    print("Verdadero1")
}else if !condicion
{
    print("Verdadero 2")
}
 

//-----------------you can mix conditionals using &&
var temp = 20

if temp < 30 && temp > 10{
    print("sera un dia tibio")
}



//---------------you also can use or whit ||
var age = 18
var parentalcontrol = false

if age == 18 || parentalcontrol == true {
    print("you can access")
}



//---------------You can also do it with enums

enum DadsTranspor{
    case bicicle , Taxi , Moto , Public
}

let transport = DadsTranspor.Public

if transport == .Taxi || transport == .Public {
    print("Dad I don`t have cash ")
}else if transport == .Moto {
    print("I`ll give u the documents ")
}else {print("check the tires")}


//it better to use an Switch case instead of if condition
// it has a default case instead to cheak every posible condition
// swift works debuging line by line 

enum Weather{
    case rain ,sun , wind, snow ,unknow
}

let forecast = Weather.sun

switch forecast
{
case .sun:
    print("🔆")
    
case .rain:
    print("☂")

case .snow:
    print("🏂")

case .wind:
    print("🀀")
    
case .unknow:
    print("💔")
    
}



