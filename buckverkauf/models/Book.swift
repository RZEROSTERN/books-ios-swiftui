//
//  Book.swift
//  buckverkauf
//
//  Created by Marco Ramírez Solís on 17/05/22.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    let author: String
    let title: String
    let cover: String
    let price: Double
}

// Tests
extension Book {
    static let samples = [
        Book(author: "J.R.R. Tolkien", title: "The Fellowship of the Ring", cover: "cover", price: 18.85)
    ]
}
