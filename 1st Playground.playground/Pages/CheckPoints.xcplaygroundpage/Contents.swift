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





//-____________________________________________________-
//-____________________________________________________-
//____________Checkpoint 6 _____________________________
//-____________________________________________________-
//-____________________________________________________-

struct car {
    
    let model:String
    let numberOfSeats:Int
    private(set) var currentGear:Int
    
    init(model: String, numberOfSteats:Int ,currentGear:Int = 1){
        self.model = model
        self.numberOfSeats = numberOfSteats
        self.currentGear = currentGear
    }
    
    mutating func shiftUp(){
        if currentGear < 10{
            currentGear += 1
            print("gear shifted up to \(currentGear)")
        }else{
            print("can't shift up ,actual current gear \(currentGear)")
        }}
    
    mutating func shiftDown(){
        if currentGear > 0 {
            currentGear -= 1
            print("gear shifted Down to \(currentGear)")
        }else{
            print("can't shift down ,actual current gear \(currentGear)")
        }}
    
}

var myCar = car(model: "Corolla", numberOfSteats: 5)
myCar.shiftUp()
myCar.shiftUp()
myCar.shiftDown()


print(myCar)

for _ in 0...8{
    myCar.shiftUp()
}
