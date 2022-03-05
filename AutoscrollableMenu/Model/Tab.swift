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
    Food(title: "Шоколад", description: "Нежный черный шоколад", price: "70р.", image: "pic1"),
    Food(title: "Печенье", description: "Хрустящее овсяное печенье с кусочками шоколада", price: "35р..", image: "pic2"),
    Food(title: "Роллы", description: "Сет роллов 'Филадельфия'", price: "900р.", image: "pic3"),
    Food(title: "Картошка фри", description: "Хрустящая картошка фри", price: "55р.", image: "pic4"),
    Food(title: "Пицца", description: "Аппетитная пицца 'FoodClub'", price: "550р.", image: "pic5"),
    Food(title: "Сэндвич", description: "Сэндвич с курицей", price: "350р.", image: "pic6")

]

struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab: String
    var foods: [Food]
}

var tabsItems = [
    Tab(tab: "Возьми с собой", foods: foods.shuffled()),
    Tab(tab: "Акция", foods: foods.shuffled()),
    Tab(tab: "Закуски", foods: foods.shuffled()),
    Tab(tab: "Кофе и пироженые", foods: foods.shuffled())
]
