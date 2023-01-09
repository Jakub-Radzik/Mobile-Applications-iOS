//
//  Classes.swift
//  Shop
//
//  Created by Jakub Radzik on 13/12/2022.
//

import Foundation

class ProductProp{
    let id = UUID()
    var key: String
    var value: String
    
    init(key: String, value: String){
        self.key = key
        self.value = value
    }
}

class Product{
    let id = UUID()
    var name: String
    var image: String
    var properties: [ProductProp]
    var rating: Float
    var rateCount: Int = 222
    var price: Int = 2222
    var producent: String
    var producentImage: String
    var description: String = "Lorem ipsum Lorem ipsum Lor em ipsum Lorem ips um Lore m ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lo rem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum "
    var propsDescriptionAccessibility: String = ""
    
    init(name: String, image: String, producent: String, producentImage: String, properties: [ProductProp]){
        self.name = name
        self.image = image
        self.properties = properties
        self.producent = producent
        self.producentImage = producentImage
        
        self.price = Int.random(in: 999...2199)
        self.rateCount = Int.random(in: 0...120)
        if(self.rateCount == 0){
            self.rating = 0
        }else{
            self.rating = Float.random(in: 1...5)
        }
        
        for prop in properties {
            self.propsDescriptionAccessibility.append(contentsOf: prop.key)
            self.propsDescriptionAccessibility.append(contentsOf: " ")
            self.propsDescriptionAccessibility.append(contentsOf: prop.value)
            self.propsDescriptionAccessibility.append(contentsOf: " ")
        }
        
    }
    
    
    init(name: String, image: String, properties: [ProductProp]){
        self.name = name
        self.image = image
        self.properties = properties
        self.producent = ""
        self.producentImage = ""
        
        self.price = Int.random(in: 999...2199)
        self.rateCount = Int.random(in: 0...120)
        if(self.rateCount == 0){
            self.rating = 0
        }else{
            self.rating = Float.random(in: 1...5)
        }
        
        for prop in properties {
            self.propsDescriptionAccessibility.append(contentsOf: prop.key)
            self.propsDescriptionAccessibility.append(contentsOf: " ")
            self.propsDescriptionAccessibility.append(contentsOf: prop.value)
            self.propsDescriptionAccessibility.append(contentsOf: " ")
        }
        
    }
}

class Subcategory {
    let id = UUID()
    var name: String
    var products: [Product]
    
    init(name: String, products: [Product]){
        self.name = name
        self.products = products
    }
}

class Category {
    let id = UUID()
    var name: String
    var iconName: String
    var subcategories: [Subcategory]
    
    init(name: String,iconName:String, subcategories: [Subcategory]){
        self.name = name
        self.iconName = iconName
        self.subcategories = subcategories
    }
}
