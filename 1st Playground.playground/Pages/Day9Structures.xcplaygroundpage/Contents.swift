import Foundation



//creation of structures
//it allows you to make an obejct with a default structure


struct Album {
    let name:String
    let acordeon:String
    let singer:String
    
//you can create functions inside the structure
    func printSummary(){
        print("\(name) \(acordeon) \(singer) ")
    }
    
}

let TituloDeAmor=Album(name:"TituloDeAmor",acordeon:"Juancho Rois",singer:"Diomedes Dias")

print(TituloDeAmor.name)

TituloDeAmor.printSummary()


/*
1. The variables and constants inside the structure are called
Properties
2. A Function inside the structura are called methods
3. When we create a constant or a Variable from the structures theese are called instances
4. the way you create the structure is called initializar  */




//__________How to compute property values dynamically__________
struct Employee {
    let name:String
    var vacationAllowed = 14
    var vacationTaken = 0
  //we can create dynamic calculated values
    var vacationRemainig: Int {
        get{
            vacationAllowed - vacationTaken
        }
        set{
            vacationAllowed = vacationTaken + newValue
        }
        
    }
    
}

var charley = Employee(name:"Cahrley Parker",vacationAllowed:14)
charley.vacationTaken += 4
charley.vacationRemainig = 5

print(charley.vacationAllowed)



//_____HOW TO TAKE ACTION WHEN A PROPERTY CHANGES

struct Game {
    var score = 0{
        
        didSet {
            print("Score now is \(score)")
        }
    }
}

var game = Game()
/*
game.score += 10
print("Score now is \(game.score)")
game.score -= 3
print("Score now is \(game.score)")
*/

//to avoid print every time we change ,
//we can prevent this with using didset

game.score += 10
game.score -= 3
game.score += 10



struct App {
    var contacts = [String]() {
        willSet{
            print("Curnre value is \(contacts)")
            print("New value will be \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue) \n ")
            print("")
        }
    }
}

var app = App()
app.contacts.append("Adrian")
                
app.contacts.append("Walle")
app.contacts.append("Michael")
 
//Also you can customa an initializer


struct player {
    var name :String
    var number: Int
    
    
    init( name: String){
        self.name = name
        self.number = Int.random(in: 1...10)
    }
}

let Player = player(name: "juan")
print(Player.self)
