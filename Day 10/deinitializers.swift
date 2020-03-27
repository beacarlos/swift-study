class Person {
    var name = "Bea"

    init() {
        print("\(name) está acordado!")
    }

    func printGreeting() {
        print("Olá, Eu sou \(name)")
    }

    deinit {
        print("\(name) está dormindo!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}