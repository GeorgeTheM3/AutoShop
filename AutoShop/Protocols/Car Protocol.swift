//
//  CarProtocol.swift
//  AutoShop
//
//  Created by Георгий Матченко on 17.07.2022.
//

import Foundation

protocol CarProtocol {
    var model: String { get }
    var color: String { get }
    var buildDate: Int { get }
    var price: Int { get set }
    var accessories: [String] { get set }
    var isServiced: Bool { get set }
}

