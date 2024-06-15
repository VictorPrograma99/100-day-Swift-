import Foundation

/* Creating a shoping list */

struct producto {
    var name: String
    var valor: Int
    var comprado: Bool
    
}

var listaDeCompras:[producto] = []

 func agregarProducto( name:String, valor:Int ){
     let nuevoitem = producto(name: name, valor: valor,comprado : false)
    listaDeCompras.append(nuevoitem)
}

func borrarProducto(name:String){
    if let index = listaDeCompras.firstIndex(where: {$0.name == name } ) {
        listaDeCompras.remove(at: index)
    }else {
        print("Producto no encontrado")
    }
    
}

func comprarProducto(name:String){
    if let index = listaDeCompras.firstIndex(where: {$0.name == name } ) {
        listaDeCompras[index].comprado = true
    }else {
        print("Producto no encontrado")
    }
}

agregarProducto(name:"carne",valor:20)
agregarProducto(name:"pasta",valor:30)

comprarProducto(name: "carne")
borrarProducto(name: "pasta")
print(listaDeCompras.count)



print(listaDeCompras)
 
//____________________________________
//crate clases inherit,super.init , override methods initializers

//CHATGPT EXERCICE

class Empleado{
    
    let nombre:String
    let salario:Int
    
    init(nombre:String,salario:Int){
        self.nombre=nombre
        self.salario=salario
    }
    
    func description(){
        print("Nombre del empleado \(nombre), salario del empleado \(salario)")
    }
}

class Gerente:Empleado{
    let departamento:String
    
    init(nombre: String, salario: Int,departamento:String) {
        self.departamento = departamento
        super.init(nombre: nombre, salario: salario)
        
    }
    override func description(){
        print("Nombre del empleado \(nombre), salario del empleado \(salario), Departamento \(departamento)")
    }
}



let carlos = Empleado(nombre: "Carlos Manuel", salario: 2000000)
let andres = Gerente(nombre: "Andres German", salario: 1000000, departamento: "Testing")


carlos.description()
andres.description()
