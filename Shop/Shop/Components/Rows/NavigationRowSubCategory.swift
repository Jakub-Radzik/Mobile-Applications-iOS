//
//  NavigationRowSubCategory.swift
//  Shop
//
//  Created by Jakub Radzik on 19/12/2022.
//

import SwiftUI

struct NavigationRowSubCategory: View {
    var name: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(name)
        }
        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
    }
}
