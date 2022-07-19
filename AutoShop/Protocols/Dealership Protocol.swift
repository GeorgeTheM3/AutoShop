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
    func presaleService(car: CarProtocol)
    func addToShowroom(car: CarProtocol)
    func sellCar(car: CarProtocol)
    func orderCar()
}
