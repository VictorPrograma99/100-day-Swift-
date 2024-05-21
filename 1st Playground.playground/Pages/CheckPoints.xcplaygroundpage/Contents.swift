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



