//
//  GenericStack.swift
//  DataStrutureSwift
//
//  Created by Abdul Basit on 23/11/2019.
//  Copyright © 2019 Abdul Basit. All rights reserved.
//


// Custom Stack Implementation

class Stack<T>{
    
    init() {
        stack = [T]()
    }
    
    private var stack : [T?]?
    
    func push(val : T?) {
        stack?.append(val)
    }
    
    func pop() -> T? {
        let count = stack?.count
        if count == 0 {
            print("Stack is Empty")
        }
        
        guard let countN = count , countN > 0 else {return nil}
        return stack?.removeLast()
    }
    
    func count() -> Int? {
        return stack?.count
    }
    
    func isEmpty() -> Bool {
        return stack?.isEmpty ?? true
    }
}
