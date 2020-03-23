//Creating your own structs

struct DadosPessoais {
    var nome: String
    var end : String
    var cep: Int
}

var pessoa = DadosPessoais(nome:"Beatriz Carlos", end:"Guaiuba - ce", cep:61890000)
print(pessoa)

// Computed properties
//  uma propriedade que executa o código para descobrir seu valor.

struct DadosPessoais1 {
    var nome: String
    var end : String
    var cep: Int
    var isHome: Bool
    var tipo: String {
        if isHome {
            return "Mora em uma casa"
        } else {
            return "Mora em apartamento"
        }
    }
}

var pessoa1 = DadosPessoais1(nome:"Beatriz Carlos", end:"Guaiuba - ce", cep:61890000, isHome: true)
print(pessoa1.tipo)


// Property observers
// permitem executar o código antes ou depois de qualquer alteração de propriedade.
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) esta \(amount)% completado")
        }

        willSet {
            print("Carregando .. antes que seja modificada")
            
        }
    }
}

var progress = Progress(task: "Carregando dados", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Métodos

// struct City {
//     var population: Int

//     func collectTaxes() -> Int {
//         return population * 1000
//     }
// }

// let london = City(population: 9_000_000)
// london.collectTaxes()

// Mutating methods
// Quando você deseja alterar uma propriedade dentro de um método, é necessário marcá-la usando a mutating.
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Desconhecido"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person)

// Properties and methods of strings

// Contar caracteres
let string = "Beatriz Carlos Da Silva"
print(string.count)

// Método que retorna true se a sequência começa com letras específicas:
print(string.hasPrefix("Be"))

// Metodo que retorna todos com letra maiuscula
print(string.uppercased())

// Metodo classifica todos os caracteres em ordem de procedencia e alfabetica em forma de matriz
print(string.sorted())

//Properties and methods of arrays
var toys = ["Woody"]

//count
print(toys.count)

// Add elementos na matriz
toys.append("Buzz")
print(toys)

// Localizar elemetos
toys.firstIndex(of: "Buzz")
print(toys)

// sortear a ordem da matriz
print(toys.sorted())

//Remover um elemento pelo index
toys.remove(at: 0)

print(toys)

// Initializers
// é um construtor, inicializadores são métodos especiais que fornecem maneiras diferentes de criar sua estrutura.
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

// Referring to the current instance
// Self - valor é particularmente útil quando você cria inicializadores com os mesmos nomes de parâmetros que sua propriedade.
struct Teste {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
// Lazy deixa a estrutura opicional a ser usada ou não.
struct ArvoreGeneologica {
    init() {
        print("Criando a arvore genealogica!")
    }
}

struct Parente {
    var name: String
    lazy var arvore = ArvoreGeneologica()

    init(name: String) {
        self.name = name
    }
}

var ed = Parente(name: "Ed")

//Static properties and methods
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let ted = Student(name: "Ted")
let taylor = Student(name: "Taylor")
print(Student.classSize)


// Acess Control
// PUBLIC - permitem que as entidades sejam usadas em qualquer arquivo de origem de seu módulo
// INTERNAL -  sejam usadas em qualquer arquivo de origem de seu módulo de definição, uso interno.
// FILEPRIVATE - uso de uma entidade ao seu próprio arquivo de origem definidor.
// PRIVATE - uma entidade à declaração anexa e às extensões dessa declaração que estão no mesmo arquivo. 
public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}