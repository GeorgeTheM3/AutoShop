//
//  Lada structure .swift
//  AutoShop
//
//  Created by Георгий Матченко on 18.07.2022.
//

import Foundation

struct Lada: CarProtocol {
    var model: String
    var color: String
    var buildDate: Int
    var price: Int
    var accessories: [String]
    var isServiced: Bool
}
