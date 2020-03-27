protocol Payable {
    func calculateWages()
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
}


class Teste: Employee {
    func calculateWages() {
        print("I win bla bla bla")
    }

    func study() {
        print("I need to learn Swift, English and integral calculus.")
    }

    func takeVacation(days: Int) {
        print("I am in quarantine for \(days) days.")
    }
}