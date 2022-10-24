//
//  ContentView.swift
//  FoodPin
//
//  Created by Jakub Radzik on 24/10/2022.
//

import SwiftUI

struct RestaurantListView: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery"
    , "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional",
    "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(restaurantNames.indices, id: \.self){
                    index in
                    NavigationLink {
                        RestaurantView(restaurantName: restaurantNames[index], restaurantImage: restaurantImages[index])
                    } label: {
                        HStack(alignment: .top, spacing: 20) {
                        Image(restaurantImages[index])
                            .resizable()
                            .frame(width: 120, height: 118)
                            .cornerRadius(20)
                            VStack(alignment: .leading) {
                            Text(restaurantNames[index])
                                .font(.system(.title2, design: .rounded))
                            Text("Type")
                                .font(.system(.body, design: .rounded))
                            Text("Location")
                                .font(.system(.subheadline, design: .rounded))
                                .foregroundColor(.gray)
                            }
                            
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
            .preferredColorScheme(.dark)
    }
}
