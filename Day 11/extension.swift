extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared())


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("Quantidade \(count):")

        for name in self {
            print(name)
        }

        print()
    }
}

pythons.summarize()
beatles.summarize()
