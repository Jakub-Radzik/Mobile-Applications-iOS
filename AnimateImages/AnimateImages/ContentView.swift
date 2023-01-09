//
//  ContentView.swift
//  AnimateImages
//
//  Created by Jakub Radzik on 21/11/2022.
//

import SwiftUI

struct ContentView: View {
    var images: [String] = []
    var imgs: [UIImage] = []
    var maxFrame = 73;
    var minFrame = 1;
    @State var currentFrame = 1;
    
    init(){
        for i in minFrame...maxFrame+1 {
            images.append("img\(i)")
            imgs.append(UIImage(named: "img\(i)")!)
        }
        
    }
    
    func incrementFrame(){
        if(currentFrame==maxFrame){
            currentFrame=minFrame
        }else{
            currentFrame = currentFrame + 1
        }
    }
    
    func decrementFrame(){
        if(currentFrame==minFrame){
            currentFrame=maxFrame
        }else{
            currentFrame = currentFrame - 1
        }
    }
    
    

    
    @State var hovered = false
    
    var body: some View {
        VStack{
            Image(images[currentFrame])
            HStack{
                Button("<", action: incrementFrame).padding().background(.red)
                Button(">", action: decrementFrame).padding().background(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
