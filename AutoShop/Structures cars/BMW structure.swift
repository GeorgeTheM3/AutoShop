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
    var isServiced: Bool {
        get {
            return false
        }
        set  {
            
        }
    }
}

let bmw1 = BMW(model: "1 series",
                 color: "Blue",
                 buildDate: 2020,
                 price: 2_400_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ])

let bmw2 = BMW(model: "X5",
                 color: "Black",
                 buildDate: 2021,
                 price: 5_400_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ])

let bmw3 = BMW(model: "7 series",
                 color: "White",
                 buildDate: 2022,
                 price: 7_400_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ])

let bmw4 = BMW(model: "4 series",
                 color: "Blue",
                 buildDate: 2020,
                 price: 4_500_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ])

let bmw5 = BMW(model: "X7",
                 color: "Black",
                 buildDate: 2021,
                 price: 10_000_000,
                 accessories: ["спортивные сидения", "камеры кругового обзора", "мультируль" ])

