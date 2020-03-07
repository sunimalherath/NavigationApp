//
//  PizzaListView.swift
//  NavigationApp
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct PizzaListView: View {
    var pizza: Pizza
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(pizza.name)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(pizza.description)
                    .font(.subheadline)
                    .fontWeight(.thin)
            }
            Spacer()
            Text("$\(Int(pizza.price))")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
        }
    }
}

struct PizzaListView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView(pizza:
            Pizza(id: 1, name: "Sample Pizza", description: "Sample Pizza Description", price: 9)
        )
    }
}
