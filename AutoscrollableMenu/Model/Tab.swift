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
    Food(title: "Шоколад", description: "Темный шоколад AlpenGold", price: "100р.", image: "pic1"),
    Food(title: <#T##String#>, description: <#T##String#>, price: <#T##String#>, image: <#T##String#>)
]
