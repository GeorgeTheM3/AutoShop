//
//  main.swift
//  AutoShop
//
//  Created by Георгий Матченко on 17.07.2022.
//

import Foundation

var dealerBMW = DealershipBMW(name: "AUTODOM",
                              showroomCapacity: 10,
                              stockCars: [bmw1],
                              showroomCars: [])


dealerBMW.sellCar(car: &bmw1)
