//
//  PizzaList.swift
//  NavigationApp
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct PizzaList: View {
    var pizzaList: [Pizza]
    var body: some View {
        NavigationView {
            List(pizzaList) { pizza in
                NavigationLink(destination: PizzaDetailScreen(pizza: pizza)) {
                    PizzaListView(pizza: pizza)
                }
            }
            .navigationBarTitle("Pizza Menu")
            .padding(6)
        }
    }
}

struct PizzaList_Previews: PreviewProvider {
    static var previews: some View {
        PizzaList(pizzaList: [
            Pizza(id: 1, name: "Garlic Chicken", description: "Garlic Chicken in crust base", price: 15),
            Pizza(id: 2, name: "Chicken & Pineapple", description: "Pizza with pineapple and fried chicken", price: 10)
        ])
    }
}
