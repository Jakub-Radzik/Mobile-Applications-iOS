//
//  Heart.swift
//  Lab1
//
//  Created by Jakub Radzik on 17/10/2022.
//

import SwiftUI

struct Heart: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow : .red)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .onTapGesture {
                self.colorChange.toggle()
            }
            .onLongPressGesture{
                self.sizeChange.toggle()
            }
    }
}

struct Heart_Previews: PreviewProvider {
    static var previews: some View {
        Heart()
    }
}
