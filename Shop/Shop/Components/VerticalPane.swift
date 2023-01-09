//
//  VerticalPane.swift
//  Shop
//
//  Created by Jakub Radzik on 19/12/2022.
//

import SwiftUI

struct VerticalPane: View {
    var iconName: String
    var name: String
    var color: Color
    let screenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        VStack{
            Image(systemName: iconName).foregroundColor(color)
            Spacer()
            Text(name).foregroundColor(color)
        }.frame(width: screenSize.width/3.9, height: 50, alignment: .center)
            .padding(20)
    }
}
