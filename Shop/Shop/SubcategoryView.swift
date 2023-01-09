//
//  SubcategoryView.swift
//  Shop
//
//  Created by Jakub Radzik on 14/12/2022.
//

import SwiftUI

struct SubcategoryView: View {
    var category:Category
    var body: some View {
        VStack{
                    List {
                        ForEach(category.subcategories.indices, id: \.self){
                            index in
                            NavigationLink {
                                VStack{
                                    ProductListView(subcategory: category.subcategories[index])
                                    Text(category.subcategories[index].name)
                                        .accessibilityAddTraits(.isHeader)
                                }
                            } label: {
                                NavigationRowSubCategory(name: category.subcategories[index].name)
                            }
                        }
                        .listRowSeparator(.hidden)
                        .listRowSeparatorTint(.gray)
                        .listRowInsets(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    }
                    .listStyle(.plain)
                }
            
            Spacer()
        }
    }



var category = appData[1]

struct SubcategoryView_Previews: PreviewProvider {
    static var previews: some View {
        
            Group{
                NavigationView{
                   SubcategoryView(category: category)
                }
                NavigationView{
                    SubcategoryView(category: category)
                }.preferredColorScheme(.dark)
            }
    }
}
