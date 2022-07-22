//
//  SpecialOffer Protocol.swift
//  AutoShop
//
//  Created by Георгий Матченко on 22.07.2022.
//

import Foundation

protocol SpecialOffer {
    func addEmergencyPack(car: inout CarProtocol)
    func makeSpecialOffer(car: inout CarProtocol)
    func checkAutoForMakeSpecialOffer()
}
