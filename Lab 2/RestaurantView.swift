//
//  RestaurantView.swift
//  FoodPin
//
//  Created by Jakub Radzik on 24/10/2022.
//

import SwiftUI

struct RestaurantView: View {
    var restaurantName: String
    var restaurantImage: String
    
    @State private var show = false
    
    var body: some View {
        ZStack{
                Image(restaurantImage)
                .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .ignoresSafeArea()
            
                
        }
        .onAppear{
            show.toggle()
        }
        .overlay(self.show ? ZStack {
            Text(restaurantName)
            .foregroundColor(.white)
            .padding()
        }.padding().background(.black).opacity(0.7): nil)
        .animation(.easeIn.delay(1), value: show)
    }
    

}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(restaurantName: "Cafe Deadend", restaurantImage: "cafedeadend")
    }
}
