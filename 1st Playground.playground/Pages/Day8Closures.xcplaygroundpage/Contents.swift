import Foundation

func GreetUser() {
    print("Hello There")
}


// you can copy functions and use'em whit others names
//when copying the function dont use parentheses after the function
//() make run the function
GreetUser()
var greeting = GreetUser
greeting()

//you can closure directly to the variable without a function name

var SayHello = {
 print("Hello")
}
SayHello()

//If you want to receive a parameter you use this structure
//Where in Marks the end of the parameters

var funvar = {
    (nombre:String) -> String in
    "Hi \(nombre)"
}

funvar("Carlos")

//If ypu want to closure a function with return value
//Do like this

func getUserData(for Age:Int ) -> String{
    
    if Age<1969 {return "Before PAPA"}
    else{
        return "After PAPA"
    }
}
//use this structure
let user:(Int) -> String = getUserData

let data=user(1979)
print(data) 


//You can pass functions into other functions,(need to practice more this ,kind of hard to understand


//--------------------------------------------------------------
//How to accept functions as parameters
// here i will create a functio that sums the values of an array

let numbers = [1,2,3,4,5,6]

func applyOperation(_ numbers: [Int], operation: (Int,Int) -> Int )-> [Int]{
    
    var results = [Int]()
    
    for i in 0..<(numbers.count-1){
        let result = operation(numbers[i],numbers[i+1])
        results.append(result)
    }
    return results
}


let sumResults = applyOperation(numbers, operation: {(a,b) in return a + b})

let resResults = applyOperation(numbers, operation: {($0*$1)})

print(sumResults)
print(resResults)

//Another example

func calculate (_ a:Int,_ b:Int,operacion:(Int,Int)->Int)->Int{
     operacion(a,b)
}

let suma = calculate(1, 2, operacion: {$0+$1})
print(suma)


//another examples


func modifyArray(_ arr:[Int],opp:(Int,Int)->Int )->[Int]
{
 var final = [Int]()
    
    for i in 0..<(arr.count-1){
        
        let res = opp(numbers[i],numbers[i+1])
        final.append(res)
    }
    return final
    
}



let modifier = modifyArray(numbers) { a,b in a * 2  }
print(modifier)


