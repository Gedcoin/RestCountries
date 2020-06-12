//
//  CountrySearchResultViewController.swift
//  RestCountries
//
//  Created by Gedcoin Maboya on 2020/06/12.
//  Copyright © 2020 LTI. All rights reserved.
//

import UIKit

class CountrySearchResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countrySearchResultTableView: UITableView!
    let searchCountryResult = SearchCountryResultViewModel()
    var countryData: [CountryData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countrySearchResultTableView.delegate = self
        countrySearchResultTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let countryCell = countrySearchResultTableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryTableViewCell
        
        countryCell.countryNameLabel.text = countryData[indexPath.row].name
        countryCell.countryCodeLabel.text = countryData[indexPath.row].alpha2Code
        countryCell.countryCapitalLabel.text = countryData[indexPath.row].capital
        countryCell.countryRegionLabel.text = countryData[indexPath.row].region
        countryCell.countryCurrencyLabel.text = countryData[indexPath.row].currencies[0].name
        countryCell.countryPopulationLabel.text = String(countryData[indexPath.row].population)
        
        return countryCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
}
