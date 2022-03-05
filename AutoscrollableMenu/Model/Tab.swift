//
//  Tab.swift
//  AutoscrollableMenu
//
//  Created by Danil Peregorodiev on 05.03.2022.
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
    Food(title: "Choclate", description: "Choclate", price: "10$", image: "pic1")
]

struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab: String
    var foods: [Food]
}

var tabsItems = [
    Tab(tab: "Home Style", foods: foods.shuffled()),
    Tab(tab: "Promotions", foods: foods.shuffled()),
    Tab(tab: "Snacks", foods: foods.shuffled()),
    Tab(tab: "McCafe", foods: foods.shuffled())
]
