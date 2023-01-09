//
//  ProductView.swift
//  Shop
//
//  Created by Jakub Radzik on 13/12/2022.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    var body: some View {
        ScrollView{
            
        VStack{
            // ZDJECIA
            ZStack{
                //ZDJECIE PRODUKTU
                HStack{
                    Spacer()
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                .frame(width: 200, height: 200, alignment: .center)

                //LOGO PRODUCENTA
                if(product.producentImage != ""){
                    VStack{
                        HStack{
                                Spacer()
                                HStack{
                                    Image(product.producentImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit )
                                }.frame(width: 90, height: 90, alignment: .topLeading)
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        .ignoresSafeArea()
                        Spacer()
                    }
                }
            }
            .accessibilityElement()
            .accessibilityLabel(Text(product.name))
            
            //CENA I OCENY
            HStack{
                Text(product.name).font(.title2)
                Spacer()
            }.padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
            
            HStack{
                Text("\(product.price) zł").bold()
                Spacer()
                RatingView(rating: product.rating, count: product.rateCount)
            }
            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
            .accessibilityElement()
            .accessibilityLabel(Text("Cena: \(product.price) Ocena: \(String(format: "%g", floor(product.rating * 10) / 10.0 ))"))
            Spacer()
            
            // DETALE PRODUKTU
            VStack{
                Divider().padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))

                VStack{
                    HStack{
                        Text("Opis: ").bold()
                        Spacer()
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))

                    HStack{
                        Text(product.description).font(.system(size: 14)).lineSpacing(2)
                        Spacer()
                    }.padding(EdgeInsets(top: 1, leading: 20, bottom: 20, trailing: 20))
                }
                .accessibilityElement()
                .accessibilityLabel(Text(product.description))


                Divider().padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                VStack{
                    HStack{
                        Text("Specyfikacja: ").bold()
                        Spacer()
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))

                    ForEach(product.properties.indices, id: \.self){
                        index in
                        HStack{
                            Text("\(product.properties[index].key):")
                            Text(product.properties[index].value).bold()
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 0))
                    }
                    Spacer()
                }
                .padding(0)
                .accessibilityElement()
                .accessibilityLabel(Text(product.propsDescriptionAccessibility))


            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            
            //BUTTON KUP TERAZ
            HStack{
                Spacer()
                Button{
                }label: {
                    Text("Kup teraz").padding(20).foregroundColor(.white).font(.title2)
                }
                .accessibilityLabel("Kup teraz")
                .accessibilityHint("Kliknij jeśli chcesz kupić")
                .background(.green)
                .cornerRadius(10)
            }
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 0, trailing: 20))
            Spacer()
        }
        }
    }
}


struct RatingView: View {
    var rating: Float
    var count: Int
    var showCount: Bool = true
    var label = "Brak opinii"
    var maximumRating = 5
    
    var body: some View {
        HStack{
            if count == 0 {
                Text(label)
            }else{
                ForEach(1..<maximumRating+1, id: \.self) { number in
                    if(Float(rating) - Float(number)  >= 0){
                        Image(systemName: "star.fill").foregroundColor(Color(.systemYellow))
                    }else if(Float(rating) - Float(number)  > -1){
                        Image(systemName: "star.leadinghalf.filled").foregroundColor(Color(.systemYellow))
                    }else{
                        Image(systemName: "star").foregroundColor(Color(.systemYellow))
                    }
                }
                if(showCount){
                    Text("(\(count) opinie)").font(.caption).bold()
                }
            }
        }
    }}


struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ProductView(product: gpu[2])
//            ProductView(product: tablets[1]).preferredColorScheme(.dark)
//            ProductView(product: tablets[1]).previewInterfaceOrientation(.landscapeRight)
//            ProductView(product: gpu[1]).preferredColorScheme(.dark).previewInterfaceOrientation(.landscapeRight)
        }
    }
}
