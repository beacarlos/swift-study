// Overriding methods
class Animal {
    func chamar(){
        print("Todos os animais tem um som.")
    }
}

class Doguinho: Animal {
    override func chamar (){
        print("O doguinho faz woof woof!")
    }
}

let lili = Doguinho()
lili.chamar()