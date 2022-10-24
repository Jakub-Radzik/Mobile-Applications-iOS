//
//  Exercise1.swift
//  Lab2
//
//  Created by Jakub Radzik on 24/10/2022.
//

import SwiftUI

struct Exercise1: View {
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha",
    "Cafe Loisl", "Petite Oyster", "For Kee Restaurant"]
    
    var body: some View {
        List{
            ForEach(restaurantNames, id: \.self){
                restaurantName in HStack {
                    Image(restaurantName)
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text(restaurantName)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}



