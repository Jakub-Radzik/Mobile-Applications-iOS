//
//  ProductListView.swift
//  Shop
//
//  Created by Jakub Radzik on 14/12/2022.
//

import SwiftUI

struct ProductListView: View {
    var subcategory: Subcategory
    
    var body: some View {
        List {
            ForEach(subcategory.products.indices, id: \.self){
                index in
                NavigationLink {
                    VStack{
                        ProductView(product: subcategory.products[index])
                    }
                } label: {
                    NavigationRowProduct(product: subcategory.products[index])
                }
            }
            .listRowSeparator(.visible)
            .listRowSeparatorTint(.gray, edges: .bottom)
        }
        .listStyle(.plain)
    }
}

struct NavigationRowProduct: View {
    var product: Product
    @Environment(\.sizeCategory) private var sizeCategory

    var body: some View {
        HStack(alignment: .center) {
            VStack{
                Image(product.image)
                    .resizable()
            }
            .frame(width: 100, height: 100, alignment: .leading)
            VStack{
                HStack{
                    Text(product.name).font(.headline)
                    Spacer()
                }
                Spacer()

                if sizeCategory > ContentSizeCategory.large {
                    VStack{
                        RatingView(rating: product.rating, count: product.rateCount, showCount: false)
                        Text("\(product.price) zł").font(.caption)
                    }
                } else {
                    HStack{
                        RatingView(rating: product.rating, count: product.rateCount, showCount: false)
                        Spacer()
                        Text("\(product.price) zł").font(.caption)
                    }
                }
                
            }
        }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            .accessibilityElement()
            .accessibilityLabel(Text("\(product.name) za \(product.price) zł ocena: \(String(format: "%g", floor(product.rating * 10) / 10.0 ))"))
    }
}

var subcategory = appData[1].subcategories[0]

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProductListView(subcategory: subcategory)
        }
    }
}
