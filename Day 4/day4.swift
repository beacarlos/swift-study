//Loops

// For Loop
let count = 1...10

for number in count {
    print("O numero é \(number)")
}

//For in arrays
let albums = ["Red", "1989", "Teste"]

for album in albums {
    print("\(album)")
}

// caso não precisa usar uma constante de iteração
print("Toca marilia mendonça ai: ")
for _ in 1...5 {
    print("play")
}


// WHILE LOOP
var number = 1;

while number <= 50 {
    if number % 5 == 0 {
        //print(number)
    }
    number += 1
}

// REPEAT LOOP
repeat {
    print(number)
    number += 1
} while number <= 20

// WHILE QUE TENHAM FALSE PARAM.
var stop = true
number = 0
while stop {
    print("Teste \(number)")
    number += 1

    if number == 20 {
        stop = false
    }
}

//Exiting Loops
var dias = 0
while true {
    dias += 1

    if dias >= 20 {
        print("dias \(dias)")
        break
    }
}

// For Alinhados
print("Tabuada")

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) =  \(product)")
    }
}

// Caso os for tiver alinhados e você quiser parar os dois
pararTudo: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) = \(product)")

        if product == 50 {
            print("E parou os dois!")
            break pararTudo
        }
    }
} 

// For exeplo de loop infinito
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}