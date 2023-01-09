//
//  Welcome.swift
//  Shop
//
//  Created by Jakub Radzik on 14/12/2022.
//

import SwiftUI

struct Welcome: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var username = "Jan Kowalski"
    var shopName = "Najlepszy sklep w okolicy"
    
    private var titleColor: Color {
        switch colorScheme {
            case .light:
                return Color(white: 0.2)
            case .dark:
                return Color(white: 0.8)
            @unknown default:
                return Color(white: 0.2)
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    HStack{
                        Image("apple")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .padding(20)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text(shopName).foregroundColor(titleColor).font(.title)
                    }
                }.accessibilityElement()
                    .accessibilityLabel(Text(shopName))

                
                
                HStack{
                    Text("Witaj, \(username)").font(.title2).foregroundColor(titleColor).padding(20)
                    Spacer()
                }.accessibilityElement()
                    .accessibilityLabel(Text("Witaj, \(username)"))
                
                NavigationBar(color: titleColor)
                NavigationLink{
                    CategoriesView()
                    Text("Wszystkie kategorie")
                        .accessibilityAddTraits(.isHeader)
                }label: {
                    Text("Wszystkie kategorie").foregroundColor(titleColor).padding(20)
                }.accessibilityElement()
                    .accessibilityLabel(Text("Wszystkie kategorie"))
                Spacer()
            }
        }
    }
}

struct NavigationBar: View {
    var color: Color
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                ForEach(appData.indices, id: \.self){
                    index in
                    NavigationLink {
                        SubcategoryView(category: appData[index])
                        Text(appData[index].name)
                            .accessibilityAddTraits(.isHeader)
                    } label: {
                        VerticalPane(iconName: appData[index].iconName, name: appData[index].name, color: color)
                            .accessibilityElement()
                                .accessibilityLabel(Text(appData[index].name))
                    }
                }
                .listRowSeparator(.hidden)
            }
        }
        .padding(20)
        .listStyle(.plain)
    }
}

struct Welcome_Previews: PreviewProvider {
    
    static var previews: some View {
        Group{
            Welcome()
            Welcome().preferredColorScheme(.dark)
            Welcome().previewInterfaceOrientation(.landscapeRight)
            Welcome().preferredColorScheme(.dark).previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
