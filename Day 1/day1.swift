/* Variaveis */
// | 382 | Swift | Demonstrate how to effectively use comments. |
// | 378 | Swift | Demonstrate the use of variables and constants |

// Como é a estrutura de uma variavel.
//var nome_da_variavel
var hello = "Hello, playgroud"
hello = "Goodbye"

print(hello)

// Inteiros
var idade = 19
var population = 8_000_000

print(population)

// Multi-linhas em strings
var multi_line = """
This goes
over multiples
lines
"""
// | 381 | Swift | Demonstrate how to print values from variables and constants |
print(multi_line)

// Doubles
var pi = 3.14

// Booleans
var awesome = true

// Interpolação de strings
var total = 45
var saldo_total = "Seu total é \(total)"

/* Constantes */
// valores que são definidos e nunca mais mudados.
let taylor = "Swift"

//| 379 | Swift | Demonstrate how to use type annotation. |
// Inferência de Tipo
// Deixar explicito o tipo da variavel ou constante.
let album: String = "Sei la"
var ano: Int = 1888


// Crie uma constante com um tipo explícito Float e com um valor 4.
let numeroPontoFlutuante: Float = 2.55 

//Tente remover a conversão para o tipo String na última linha. Qual erro que aparece?
let label = "A largura é "
let width = 94
let widthLabel = label + String(width)