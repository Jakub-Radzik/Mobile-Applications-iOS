//
//  ContentView.swift
//  Lab1
//
//  Created by Jakub Radzik on 17/10/2022.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    func speak(text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    var body: some View {
        VStack{
            Text("Guess These Movies")
                .fontWeight(.bold)
                .font(.system(.headline, design: .monospaced))
                .padding()
            Text("Click on buttons:")
                
            VStack{
                Button{
                    speak(text: "Ocean 11")
                } label: {
                    Text("EMOJIS")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }
                .padding()
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(20)
                
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
