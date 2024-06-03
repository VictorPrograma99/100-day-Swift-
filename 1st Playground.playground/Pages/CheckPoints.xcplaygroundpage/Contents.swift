import Foundation


//CHECKPOINT 4
enum errores:Error {
    case noroot , outofbones
}


func RaizCuadrada(_ Nu: Int) throws -> String {
    var raiz = 0
    if Nu > 10000 || Nu < 1 {
        throw errores.outofbones
    } else {
        for i in 1...10000 {
            if (i * i) == Nu {
                
                return "Raiz cuadrada es \(i)"
            }
        }
        if raiz == 0{
            throw errores.noroot
        }
        return ""
    }
    
}

var number = 100
do{
   try print(RaizCuadrada(number))
   
}catch errores.outofbones{
    print("the number is out of bones")
}catch errores.noroot{
    print("Number has not root")
}


//CHECKPOINT 5

let LuckyNumbers = [7,4,38,21,16,15,12,33,31,49]

//filter even numbers
//sort the array in ascending order
//map then in to string in
// print the results of the array un item per line

/*
let filtered = LuckyNumbers.filter{ $0 % 2 != 0}
print(filtered)

let sorted = LuckyNumbers.sorted()
print(sorted)

let maped = LuckyNumbers.map({"\($0) is the lucky number"})

for numbers in maped {
    print(numbers)
}
*/

//this is an easiest way

let results=LuckyNumbers.filter{$0%2 != 0}
    .sorted()
    .map{"\($0)is the lucky number"}

results.forEach{ print($0)}
