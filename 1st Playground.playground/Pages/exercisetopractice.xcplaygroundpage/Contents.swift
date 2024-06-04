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
 

