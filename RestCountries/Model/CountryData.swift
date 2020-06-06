//
//  CountryData.swift
//  RestCountries
//
//  Created by Gedcoin Maboya on 2020/05/27.
//  Copyright © 2020 LTI. All rights reserved.
//

import Foundation

struct CountryData: Codable {
    var name: String
    var alpha2Code: String
    var capital: String
    var region: String
    var population: Int
    var currencies: [Currency]
}

struct Currency: Codable {
    var code: String?
    var name: String?
    var symbol: String?
}
