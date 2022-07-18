//
//  Dealership BMW.swift
//  AutoShop
//
//  Created by Георгий Матченко on 18.07.2022.
//

import Foundation

class DealershipBMW: DealershipProtocol {
    var name: String
    var showroomCapacity: Int
    var stockCars: [CarProtocol]
    var showroomCars: [CarProtocol]
    var cars: Int {
        get {
            print("\(stockCars.count + showroomCars.count) cars have dealership \(name)")
            return stockCars.count + showroomCars.count
        }
    }
    
    func offerAccessories(accessories: [String]) {
        print("OfferAccessories \(accessories) done")
    }
    
    func presaleService(car: CarProtocol) {
        print("PresaleService with \(car) done")
    }
    
    func addToShowroom(car: CarProtocol) {
        print("AddToShowroom with \(car) done")
    }
    
    func selectCar(car: CarProtocol) {
        print("SelectCar with \(car) done")
    }
    
    func orderCar(car: CarProtocol) {
        stockCars.append(car)
        print("OrderCar \(car) done")
    }
    
    init(name: String, showroomCapacity: Int, stockCars: [CarProtocol], showroomCars: [CarProtocol]){
        self.name = name
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
    }
    
}
