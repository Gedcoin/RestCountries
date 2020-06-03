//
//  ViewController.swift
//  RestCountries
//
//  Created by Gedcoin Maboya on 2020/05/27.
//  Copyright © 2020 LTI. All rights reserved.
//

import UIKit

class SearchCountryViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet var countriesSearchString: UISearchBar!
    
    let searchCountryResult = SearchCountryResultViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Rest Countries"
        searchCountryResult.getData()
        
    }

    /*func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
    }
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        
        self.view.endEditing(true)
        return true
    }*/

}
