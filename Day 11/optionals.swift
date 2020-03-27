//Tipo opcional, adicione um ponto de interrogação depois dele.
var age: Int? = nil
age = 22


// Desempacotando opcionais
var name: String? = nil
name = "bea"
if let umwrapped = name {
    print("Quantidade de letras: \(umwrapped.count)")
} else {
    print("Não deu pra contar.")
}

// Forçar o desembrulho
let str = "5"
let num = Int(str)!

// Forçar de forma implicita
let cep: Int! = nil

// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Bea carlos"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Desconhecido"
print(user)

// Optinal charning
let names = ["Renato", "Paulo", "Thiago", "David"]
let latim = names.first?.uppercased()

if let Latim = latim {
    print(Latim)
}

// Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// do {
//     try checkPassword("password") {
//         print("teste")
//     }
// } catch {
//     print("Apresente uma senha de respeito.")   
// }

// Failable initializers
struct Person {
    var id: String

    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")       
    }    
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
