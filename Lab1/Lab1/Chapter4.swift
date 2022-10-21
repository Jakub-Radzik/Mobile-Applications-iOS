//
//  Chapter4.swift
//  Lab1
//
//  Created by Jakub Radzik on 17/10/2022.
//

import SwiftUI

struct Chapter4: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass;
    var body: some View {
        VStack(spacing: 20) {
            VStack{
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                Text("Get help from experts in 15 minutes")
            }
            HStack(alignment: .bottom, spacing: 10) {
                Image("user1")
                    .resizable()
                    .scaledToFit()
                Image("user2")
                    .resizable()
                    .scaledToFit()
                Image("user3")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            Text("Need help with coding problems? Register!")
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
        }
        .padding(.top, 30)
        .background{
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct Chapter4_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Chapter4()
            Chapter4()
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}




struct VSignUpButtonGroup: View {
    var body: some View {
        VStack{
            Button{
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}
struct HSignUpButtonGroup: View {
    var body: some View {
        HStack{
            Button{
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}


