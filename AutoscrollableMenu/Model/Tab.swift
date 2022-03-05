//
//  Tab.swift
//  AutoscrollableMenu
//
//  Created by Danil Peregorodiev on 03.03.2022.
//

import SwiftUI

struct Food: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: String
}

var foods = [
    Food(title: "Шоколад", description: <#T##String#>, price: <#T##String#>, image: <#T##String#>)
]
