// | Swift Collection | Demonstrate how to effectively use an array | Swift Collection | Array |

// Arrays
let verao = "Verão"
let inverno = "Inverno"
let outono = "Outono"
let primavera = "Primavera"

let estacoes_do_ano = [verao, inverno, outono, primavera]
print(estacoes_do_ano[0])

//Inferencia de tipo em array
let flores: [String] = [primavera]
print(flores)

// Sets
// São um conjunto de valores unicos de ordem aletória.
let cores =  Set(["Vermelho", "Verde", "Blue"])
print(cores)

// Tuplas
// Adicionar varios valores em um unico valor.
// São fixos os valores.
var author = (first: "Beatriz", last: "Carlos")
print(author.first)

// Dicionarios (Dictonaries)
// Coleção de valores que voce pode acessar uma posicao de forma mais simples.
let altura = [
    "Pedro" : "Predow",
    "Beatriz" : "bea"
]

print(altura["Cecilia", default: "Desconhecido"])

//Empty Collections
//Dicionario Vazio
var teams = [String: Double]()
//Matriz
var results = [Int]()
//Set
var words = Set<String>()

//Enum
//São uma maneira de agrupar em grupos valores relacionados.
enum operacao {
    case adicao
    case subtracao
    case multiplicacao
    case divisao
    case exponeciacao
}

enum Planet: Int {
    case mercurio
    case venus
    case earth
    case mars
}

let venus = Planet(rawValue:1) 

