//: [Previous](@previous)

import Foundation

//using functions with parameters Creating a Calculator

func Calc(num1:Double , num2: Double,operador:Character){
     
    var resultado = 0.0

    switch operador {
        
    case "+":
         resultado = num1 + num2
    case "-":
         resultado = num1 - num2
    case "%":
        resultado = num1/num2
    case "*":
        resultado = num1*num2
    case "√":
        resultado = sqrt(num1)
        
    default:
        print("invalid operator")
    }
    print(resultado)
    
}

Calc(num1: 25, num2: 0, operador: "√")

//--------------------------------------------------------
//How to return values from Functions


func randomf() -> Double{
     Double.random(in: 1...20)
}

print(randomf())



//--------------------------------------------------------
//Exercise do two string has the same letters no matter the order

func sameletters (word1:String,word2:String) -> Bool{
word1.sorted() ==  word2.sorted()
}

print(sameletters(word1: "ohle", word2: "hole"))
//



//---------------------------------------------------------
//funciones multiparametricas

func CalcularArea() -> [String] {
    
    return ["Taylor","Swift"]
}


//_________________________________

func CalcularArea(_ Altura:Int,_ Ancho:Int) -> Int  {
    var result = Altura + Ancho
        return result
}

print(
    CalcularArea( 3, 4)
)

//__ You can avoid naming the parameter when calling the function
// using _
//__Also you can use a default parameter like this
func ExampleFunction(name: Int = 12 ){
    print(name)
}

ExampleFunction()

//HOW TO HANDLE ERRORS IN FUNCTIONS
// A.
//      1. USE "THROWS" BEFOR "->"
//      2. CREATE AN ENUM WITH ERROR RESULTS
//           WRITE IN THE BODY OF THE FUNCTION THE ERROR CASES
//          USING THROW & "NAMEENUM.CASE"
//
// B.
//      1. Use do{}catch{} structure
// C.
//        Mix Both
enum errortareas:Error {
    case negativo , decimal
}


func HomeWorkCalc(Numtareas:Int,TimeTareas:Int) throws -> Int {
    if TimeTareas <= 0 || Numtareas <= 0 {throw errortareas.negativo}
    else if  TimeTareas%1 != 0  ||  Numtareas%1 != 0 {throw errortareas.decimal}else{
        
        return TimeTareas/Numtareas
        
    }}

do{
    
    try print(HomeWorkCalc(Numtareas: -5, TimeTareas: 10))
}catch errortareas.decimal{
    print("EL numero es un decimal ")
}catch errortareas.negativo{
    print("El numero es negativo ")
}

//learnt alot 

