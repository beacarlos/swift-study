// Closures

//Sintaxe
let vamos = {
    print("bora")
}

vamos()

// Accepting parameters in a closure
// Returning values from a closure

let vamos_com_local = { (local: String) -> String in
    return "Me leva para \(local)"
}
var retorno = vamos_com_local("Espanha")
print(retorno)

// Closures as parameters
// Cloures podem ser chamadas dentro de funções como parametros
// Basicamnete é chamando uma função dentro de outra.
let dirigindo = {
    print("Eu estou dirigindo meu carro.")
}

func digirir(dirigindo: () -> Void) -> Void {
    print("Ligando o carro")
    dirigindo()
}

digirir(dirigindo: dirigindo)

// Trailing closure syntax
// junção da cloruse e da func
func assistir(app: () -> Void) -> Void {
    print("Assistindo um filme")
    app()
}

assistir {
    print("Na netflix")
}

//Using closures as parameters when they accept parameters
func comidas(domingo: (String, Int) -> String) -> Void {
    let comida_D = domingo("lasanha", 2)
    print(comida_D)
}
 
// parece uma sub função '-'
comidas { (comida: String , dia : Int) -> String in
    return "Almoço de domingo tem que ser \(comida) no dia \(dia)."
}

// Shorthand parameter names
// Pode ser feito de maneira mais simplificada
// comidas { comida in
//     return "Almoço de domingo tem que ser \(comida)."
// }

// comidas { comida in
//     "Almoço de domingo tem que ser \(comida)."
// }

// comidas {
//     "Almoço de domingo tem que ser \($0)."
// }


//Returning closures from functions
func travel() -> (String) -> Void {
    return {
        print("Estou indo para \($0)")
    }
}

let result = travel()
result("Curitiba")

let result2 = travel()("São Paulo")

// Capturing values
// func travel() -> (String) -> Void {
//     var counter = 1

//     return {
//         print("\(counter). I'm going to \($0)")
//         counter += 1
//     }
// }

// Autoclosures
var turma = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(turma.count)

let remover = { turma.remove(at: 0) }

print("Removido \(remover())!")
print(turma.count)
