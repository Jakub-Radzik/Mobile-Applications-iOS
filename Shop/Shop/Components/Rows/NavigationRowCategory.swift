//
//  NavigationRowCategory.swift
//  Shop
//
//  Created by Jakub Radzik on 19/12/2022.
//

import SwiftUI

struct NavigationRowCategory: View {
    var name: String
    var iconSystemName: String
    
    
    var body: some View {
        HStack(alignment: .center) {
            VStack{
                Image(systemName: iconSystemName)
                
            }.frame(width: 30, height: 40, alignment: .center)
            
            Text(name)
        }
    }
}
