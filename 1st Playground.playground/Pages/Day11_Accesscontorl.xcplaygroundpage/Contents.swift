
import Foundation

//AccessControll//
//it means sometimes you dont want to access

struct bankAccount{
    
   private var fonds = 0
    
    mutating func deposit(amount:Int){
        fonds += amount
    }
    mutating func withdraw(amount:Int)-> Bool{
        if fonds > amount{
            fonds -= amount
            return true
        }else{
            return false
        }
        
    }
    
}

var account = bankAccount()

account.deposit(amount: 100)
 
let success = account.withdraw(amount:200)

if success {
    print("withdraw successfully")
}else{
    print("withdraw failed not enough money")
}


//--------------------------------------------------/
//in fact it shouldnt be allowed
//account.fonds -= 100
//account.fonds

//we have to use the word PRIVATE to avoid modifing
//directly the property ,it'll be modified by the method
//          private var fonds = 0



// WORDS PRIVATE,FILEPRIVATE,PUBLIC, PRIVATE(SET)
//--------------------------------------------------/

// STATIC PROPIERTIES AND METHODs
//we use this wen we want an existing unique property inside the structure it doesn't need to be created like an instace ,it exist inside the structur


struct School {
    
    static var Studentcount = 0
    
    static func add(student:String){
        print("\(student) joined the school")
        Studentcount += 1
    }
    
}


School.add(student: "Taylor Swift ")
print(School.Studentcount)
 
