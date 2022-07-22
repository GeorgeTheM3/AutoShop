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
        print("Please buy \(accessories.randomElement()!)")
    }
    
    func presaleService(car: inout CarProtocol) {
        guard !car.isServiced else {return print("Presale service with \(car.model) done")}
        car.isServiced = true
        print("\(car.model) go presale service")
    }
    
    func addToShowroom(car: inout CarProtocol) {
        for var auto in stockCars {
            if let index = stockCars.firstIndex(where: {$0.model == car.model}) {
                stockCars.remove(at: index)
                showroomCars.append(auto)
                print("Add To Showroom with \(car) done")
                presaleService(car: &auto)
                break
            }
        }
    }
    
    func sellCar(car: inout CarProtocol) {
        if let index = showroomCars.firstIndex(where: {$0.model == car.model}) {
            offerAccessories(accessories: accessories)
            showroomCars.remove(at: index)
        } else {
            if let index = stockCars.firstIndex(where: {$0.model == car.model}) {
                addToShowroom(car: &car)
                offerAccessories(accessories: accessories)
                showroomCars.remove(at: index)
            } else {
                orderCar()
            }
        }
        print("Sell Car \(car.model) done")
    }
    
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

extension DealershipBMW: SpecialOffer {
    func checkAutoForMakeSpecialOffer() {
        for var car in stockCars{
            if car.buildDate < 2022 {
                makeSpecialOffer(car: &car)
                addToShowroom(car: &car)
            }
        }
        for var car in showroomCars {
            if car.buildDate < 2022 {
                makeSpecialOffer(car: &car)
            }
        }
    }
    
    func addEmergencyPack(car: inout CarProtocol) {
        car.accessories.append("Аптечка и огнетушитель")
    }
    
    func makeSpecialOffer(car: inout CarProtocol) {
        if car.buildDate < 2022 {
            car.price = Int(Double(car.price) * 0.85)
            addEmergencyPack(car: &car)
        }
    }
}
