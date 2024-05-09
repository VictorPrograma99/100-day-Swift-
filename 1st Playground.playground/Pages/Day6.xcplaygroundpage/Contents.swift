import Foundation

//Using loops to repeat a WORK


var Plataformas = ["tvOS", "macOS", "watchOS", "iOS"]

for plataforma in Plataformas {
    
    print("Switch work on platforms \(plataforma) ")
}


// can iterate a Loop usinf 1...(last time)
//You can iterate a loop inside another loop ,it`s called nestedloop

for leftnumber in 1...10 {
    for rightnumber in 1...10{
        print("la multiplicación de \(leftnumber) y \(rightnumber) es \(leftnumber * rightnumber)")
    }
    print()
    
}
// creating a patron

for ni in 1...4
{
    for _ in 1...ni {
        print("* ", terminator: "")
    }
print("")
}

//suma de maticez
var Matriz1 = [[1,1,1],[2,2,2],[3,3,3]]
var Matriz2 = [[1,2,3],[1,2,3],[1,2,3]]
var Matriz3 = [[0,0,0],[0,0,0],[0,0,0]]
Matriz1.count

for i in 0..<Matriz1.count {
    for j in 0..<Matriz1[i].count {
        
        Matriz3[i][j] = Matriz1[i][j] +  Matriz2[i][j]
    }
}
print(Matriz3)


//tablero de ajedre
for i in 1...8{
    
    for j in 1...8{
        
        print( ((j + i) % 2==0) ? " # ":" * ", terminator: "")
    }
    print("")
}

 
//also while
// it ends until the condition us false 
var roll=0

while roll != 20 {
    roll = Int.random(in : 1...20)
    print("Random is \(roll)")
    
    
}



//Also exists continues and braks when using loops

for i in 1...10{
    
    if i%2==0 {continue}else{print(i)
    }}

let palabras = ["manzana", "banana", "pera", "sandía", "uva", "limón", "kiwi"]


for i in palabras {
    if i.contains("a")  {print(i) }else{ continue}
}
