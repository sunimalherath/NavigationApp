//
//  PizzaDetailView.swift
//  NavigationApp
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct PizzaDetailView: View {
    var pizza: Pizza
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(pizza.name)
                    .font(.title)
                Spacer()
                Text("$\(Int(pizza.price))")
                    .font(.title)
            }
            Text(pizza.description)
                .font(.headline)
                .fontWeight(.light)
            Spacer()
        }
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDetailView(pizza:
            Pizza(id: 1, name: "Sample Pizza", description: "Sample pizza description", price: 20)
        )
    }
}
