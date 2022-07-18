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
    func selectCar(car: CarProtocol)
    //По условию слудюущий метод не должен принимать входных параметров
    //Как здесь может не быть вхожного параметра если на парковке склада у нас хранится тип CarProtocol?
    func orderCar(car: CarProtocol)
}
