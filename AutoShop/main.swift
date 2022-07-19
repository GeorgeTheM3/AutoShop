//
//  main.swift
//  AutoShop
//
//  Created by Георгий Матченко on 17.07.2022.
//

import Foundation

var dealerBMW = DealershipBMW(name: "AUTODOM",
                              showroomCapacity: 10,
                              stockCars: [bmw1,bmw2,bmw4],
                              showroomCars: [bmw3,bmw5])


print(dealerBMW.stockCars.count)

print(dealerBMW.showroomCars.count)

dealerBMW.addToShowroom(car: bmw1 )
//dealerBMW.addToShowroom(car: dealerBMW.stockCars[1] )
//dealerBMW.offerAccessories(accessories: accessories)

print(dealerBMW.stockCars.count)

print(dealerBMW.showroomCars.count)

dealerBMW.sellCar(car: bmw1)
