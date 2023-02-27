//
//  ItemModel.swift
//  Todo Benedo
//
//  Created by Fredisma OUEDRAOGO on 26/02/2023.
//

import Foundation

//This is an *Immutable  Struct*

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}
