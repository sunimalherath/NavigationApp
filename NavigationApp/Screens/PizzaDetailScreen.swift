//
//  PizzaDetailScreen.swift
//  NavigationApp
//
//  Created by Sunimal Herath on 7/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct PizzaDetailScreen: View {
    var pizza: Pizza
    var body: some View {
        NavigationView {
            VStack{
                PizzaDetailView(pizza: pizza)
                    .padding()
                Spacer()
            }
            .navigationBarTitle("Pizza Detail")
        }
    }
}

struct PizzaDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDetailScreen(pizza:
            Pizza(id: 1, name: "Sample Only", description: "Sample description only", price: 30)
        )
    }
}
