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
    return Double.random(in: 1...20)
}

print(randomf())



//--------------------------------------------------------
//Exercise do two string has the same letters no matter the order

func sameletters (word1:String,word2:String) -> Bool{
word1.sorted() ==  word2.sorted()
}

print(sameletters(word1: "ohle", word2: "hole"))
//
