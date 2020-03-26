// CLASSES
class Cardapio {
    private var price : Double
    private var name : String

    // inicilizador
    init(name: String, price: Double) {
        self.name = name
        self.price = price

        print("Comida do dia adicionada com sucesso! Prato: \(self.name) com o valor: \(price)")
    }
}

let cardapio = Cardapio(name: "Pizza Marguerita", price: 26.45)

// HERANÇA
class Restaurante : Cardapio {
    var date : String
    init(date: String, name: String, price: Double) {
        self.date = date
        super.init(name: name, price: price)

        print("Hoje \(self.date) é dia de comer coisas incriveis no D&D.")
        
    }
}

let restaurante = Restaurante(date: "12/06", name: "Frango à milanesa", price: 14.00)