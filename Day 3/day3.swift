/*| 329 | Swift | Demonstrate how to work with arithmetic operators |*/
// Arithmetic operators
let firstScore = 12
let secondScore = 4

// Adição de números inteiros
let soma = firstScore + secondScore
print("Adição: \(soma)")

// Subtração de números inteiros
let subtracao = firstScore - secondScore
print("Subtração: \(subtracao)")

// Multiplicação de números inteiros
let multiplicacao = firstScore * secondScore
print("Multiplicação: \(multiplicacao)")

// Divisão de números inteiros
let divisao = firstScore / secondScore
print("Divisão: \(divisao)")

// Modulo de números inteiros
let modulo = firstScore % secondScore
print("Resto: \(modulo)")


// Operator overloading (Sobrecarga do operador)
let number = 15
let doubleNumberSum = 15 + 15

// Junção de Strings
let name = "Beatriz Carlos "
let last_name = "Da Silva"
let full_name = name + last_name

print(full_name)

// Junção de Matrizes
let week = ["monday", "tuesday", "wednesday", "thursday", "friday"]
let weekend = ["saturday", "sunday"]
let full_week = week + weekend

print(full_week)

/* | 328 | Swift | Demonstrate how to work with Compound Assignment Operators | */
// Compound operators
 // Decrementando
 var total = 100
 total -= 45

 // Incrementando String
 var dom_casmurro = "Olhos de ressaca"
 dom_casmurro += " de cigana obliqua e dissimulada <3"

 print(dom_casmurro)

/* 
| 330 | Swift | Demonstrate how to work with comparison operators | 
| 249 | Swift | Demonstrate how to work with if conditional |
*/
 let number2 = 10
 let number3 = 4

 if number3 == number2 {
    print("Numeros Iguais")
 } else if number2 < number3 {
    print("\(number2) < \(number3)")     
 } else if number2 >= number3 {
    print("\(number2) >= \(number3)")     
 }

 // Combining operators