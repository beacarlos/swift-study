//
//  main.swift
//  Stack
//
//  Created by Beatriz Carlos on 28/03/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation

struct Stack <Element>{
    fileprivate var stack: [Element] = []
    
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    var count: Int {
        return stack.count
    }
    
    // Adicionar elementos no topo da pilha.
    mutating func push(_ element: Element ) {
        stack.append(element)
    }
    
    // Remove o elemento do topo da pilha.
    mutating func pop() -> Element? {
        // Remove e retorna o último elemento da coleção.
        return stack.popLast()
    }
    
    // Vsualizar o elemento de topo da pilha.
    func peek() -> Element? {
        return stack.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "Livros mais vendidos em 2019: \n"
        let bottomDivider = "\n \n"
        
        let stackElements = stack.map{"\($0)"}.reversed().joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}

var stackOfBooks = Stack<String>()
stackOfBooks.push("A Dinamarquesa")
stackOfBooks.push("A garota do lago")
stackOfBooks.push("O homem de giz")
stackOfBooks.push("Mitologia nórdica")
stackOfBooks.push("Eleanor & Park")
stackOfBooks.push("O pequeno principe")
print(stackOfBooks.description)
print("Amount of books in the stack: \(stackOfBooks.count).")
