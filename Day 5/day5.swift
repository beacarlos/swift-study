// Function - Sintaxe

func helloWord() {
    print("Hello Word")
}

helloWord()

// Function - Accepting Parameters
//Data com mês por extenso. Construa uma função que receba uma data no formato DD/MM/AAAA e devolva uma string no formato D de mesPorExtenso de AAAA. Opcionalmente, valide a data e retorne NULL caso a data seja inválida.

// var data_separada: [String] = []
// var data: String = "19/06/2000"

// func dataExtensao(data: String) -> [String] {
//     return data.components(separatedBy: ["-", "*", "/"])
// }

// data_separada = dataExtensao(data: data)
// print(data_separada)

// Parameter labels
// É um apelido.
func pessoa(pessoa professor: String) {
    print("Hello, \(professor)")
}

pessoa(pessoa: "bea")

//Omitting parameter labels
func teste(_ teste: String) {
    print(teste)
}

teste("bea")

// Default parameters
func greet(_ person: String, verificacao: Bool = true) {
    if verificacao == true {
        print("Ola raio de sol, \(person)!")
    } else {
        print("Ah não, essa \(person) de novo cara ...")
    }
}

greet("Bea")
greet("Bea", verificacao: false)

//Variadic functions
//nos permite colocar varios entrada no mesmo parametro
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) raiz quadrada é \(number * number)")
    }
}

square(numbers: 1,2,3)