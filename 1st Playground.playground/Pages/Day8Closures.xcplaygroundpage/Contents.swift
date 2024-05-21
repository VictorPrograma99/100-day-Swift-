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
