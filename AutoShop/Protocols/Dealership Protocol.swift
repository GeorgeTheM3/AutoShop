//
//  Dealership Protocol.swift
//  AutoShop
//
//  Created by Георгий Матченко on 18.07.2022.
//

import Foundation

protocol DealershipProtocol {
    var name: String { get }
    var showroomCapacity: Int { get }
    var stockCars: [CarProtocol] { get }
    var showroomCars: [CarProtocol] { get set }
    var cars: Int { get }
    
    func offerAccessories(accessories: [String])
    func presaleService(car: inout CarProtocol)
    func addToShowroom(car: inout CarProtocol)
    func sellCar(car: inout CarProtocol)
    func orderCar()
}
