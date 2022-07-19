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
        
        print("Offer Accessories \(accessories) done")
    }
    
    func presaleService(car: CarProtocol) {
        
        print("Presale Service with \(car.model) done")
    }
    
    func addToShowroom(car: CarProtocol) {
        var auto: CarProtocol
        for _ in stockCars {
            if let index = stockCars.firstIndex(where: {$0.model == car.model}) {
                auto = stockCars.remove(at: index)
                showroomCars.append(auto)
                print("Add To Showroom with \(car) done")
                presaleService(car: auto)
                break
            }
        }
    }
    
    func sellCar(car: CarProtocol) {
        if !car.isServiced {
            presaleService(car: car)
        }
        if car.accessories.isEmpty {
            offerAccessories(accessories: accessories)
        }
        print("Sell Car with \(car) done")
    }
    
    
    // Метод генерирует рандомный элемент. Рандомный вообще или рандомный из ранее созданных 5 машин?
    
    func orderCar() {
        stockCars.append(BMW(model: modelsBMW.randomElement()!,
                             color: colorsCars.randomElement()!,
                             buildDate: 2022,
                             price: price.randomElement()!,
                             accessories: [],
                             isServiced: false))
        print("Order Car done")
    }
    
    init(name: String, showroomCapacity: Int, stockCars: [CarProtocol], showroomCars: [CarProtocol]){
        self.name = name
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
    }
    
}
