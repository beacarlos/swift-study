//
//  main.swift
//  Queue
//
//  Created by Beatriz Carlos on 28/03/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation

// Fila é uma lista em que você pode somente inserir novos itens no final e remover itens na frente. Primeiro a entrar será o primeiro a sair.
public struct Queue<T> {
    fileprivate var queue = [T]()
    
    public mutating func enqueue(_ element: T){
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard !queue.isEmpty, let _ = queue.first else {
            return nil
        }
        
        return queue.removeFirst()
    }
    
    public func peek() -> T? {
        return queue.first
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return queue.description
    }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(3)
queue.enqueue(57)
print(queue.dequeue()!)

print(queue.description)
