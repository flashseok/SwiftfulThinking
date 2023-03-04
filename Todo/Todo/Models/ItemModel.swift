//
//  ItemModel.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import Foundation


// Immutable Struct
struct ItemModel: Identifiable, Codable {
    // pk 값
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
