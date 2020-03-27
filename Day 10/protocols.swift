// Protocols - Maneira de descrever quais propriedades e métodos algo deve ter. É como se fosse um contrato.

protocol Identificador {
    // aqui diz que essa variavel tem que ser declarada.
    var id: String { get set }

}

struct User: Identificador {
    var id: String

    func MostrarID(thing: Identificador) {
        print("Meu id é \(thing.id)")
        
    }  
}

var teste = User(id: "1")
teste.MostrarID()


// Second exemple
protocol MethodRequirements {

    func someMethod()
    func someMethodReturnType() -> String
    static func someStaticMethod(param: Int...)
}

struct SomeStruct: MethodRequirements {
    func someMethod() {
        print("someMethod called")
    }    

    func someMethodReturnType() -> String {
        print("someMethodReturnType called")
        return "return someMethodReturnType"
    }

    static func someMethodReturnType(param: Int) {
        print(param)
    }
}

