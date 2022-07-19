//
//  BMW structure.swift
//  AutoShop
//
//  Created by Георгий Матченко on 18.07.2022.
//

import Foundation

struct BMW: CarProtocol {
    var model: String
    var color: String
    var buildDate: Int
    var price: Int
    var accessories: [String]
    var isServiced: Bool
}

var bmw1 = BMW(model: " BMW 1 series",
                 color: "Blue",
                 buildDate: 2020,
                 price: 2_400_000,
                 accessories: [],
                 isServiced: false)

var bmw2 = BMW(model: "BMW X5",
                 color: "Black",
                 buildDate: 2021,
                 price: 5_400_000,
                 accessories: ["М пакет"],
                 isServiced: false)

var bmw3 = BMW(model: "BMW 7 series",
                 color: "White",
                 buildDate: 2022,
                 price: 7_400_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ],
                 isServiced: false)

var bmw4 = BMW(model: "BMW 4 series",
                 color: "Blue",
                 buildDate: 2020,
                 price: 4_500_000,
                 accessories: [],
                 isServiced: false)

var bmw5 = BMW(model: "BMW X7",
                 color: "Black",
                 buildDate: 2021,
                 price: 10_000_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ],
                 isServiced: false)

