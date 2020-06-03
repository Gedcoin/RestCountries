//
//  SearchCountryResultViewModel.swift
//  RestCountries
//
//  Created by Gedcoin Maboya on 2020/05/27.
//  Copyright © 2020 LTI. All rights reserved.
//

import Foundation

class SearchCountryResultViewModel {
    let baseURL = "https://restcountries.eu/rest/v2"
    var countryData: CountryData!
    
    func getData() {
        if let url = URL(string: "https://restcountries.eu/rest/v2") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    print("Some data: \(data.self)")
                }
            }.resume()
        }
    }
    
    
}
