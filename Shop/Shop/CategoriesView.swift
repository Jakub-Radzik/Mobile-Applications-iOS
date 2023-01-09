//
//  CategoriesView.swift
//  Shop
//
//  Created by Jakub Radzik on 14/12/2022.
//

import SwiftUI

struct CategoriesView: View {
    let data = appData
    
    
    var body: some View {
        VStack{
                List {
                    ForEach(data.indices, id: \.self){
                        index in
                        NavigationLink {
                            SubcategoryView(category: data[index])
                            Text(data[index].name)
                        } label: {
                            NavigationRowCategory(name: data[index].name, iconSystemName: data[index].iconName)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                Spacer()
        }

    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CategoriesView()
        }
    }
}
