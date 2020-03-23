// Function - Sintaxe

func helloWord() {
    print("Hello Word")
}

helloWord()

// Function - Accepting Parameters
//Data com mês por extenso. Construa uma função que receba uma data no formato DD/MM/AAAA e devolva uma string no formato D de mesPorExtenso de AAAA. Opcionalmente, valide a data e retorne NULL caso a data seja inválida.

var data_separada: [String] = []
var data: String = "19/06/2000"

func dataExtensao(data: String) -> [String] {
    return data.components(separatedBy: ["-", "*", "/"])
}

data_separada = dataExtensao(data: data)
print(data_separada)

