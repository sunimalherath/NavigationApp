//
//  DataService.swift
//  NavigationApp
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

class DataService {
    var pizzaList: [Pizza] = []
    
    var id: Int = 0
    var name: String = ""
    var description: String = ""
    var price: Double = 0.0
    
    init() {
        let pizza1 = Pizza(id: 1, name: "Hawaien Pizza", description: "Chicken and Pineapple with cheese", price: 10)
        let pizza2 = Pizza(id: 2, name: "The Lot", description: "Bacon, Chicken, Cheese & Ham", price: 12)
        let pizza3 = Pizza(id: 3, name: "Garlic Chicken", description: "Garlic Chicken, Bacon and Cheese", price: 15)
        
        
        self.pizzaList.append(pizza1)
        self.pizzaList.append(pizza2)
        self.pizzaList.append(pizza3)
    }
    
    func getPizzaList() -> [Pizza]{
        return pizzaList
    }
}
