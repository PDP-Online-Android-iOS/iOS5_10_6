//
//  ContentView.swift
//  Task 6
//
//  Created by Ogabek Matyakubov on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var phone = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .top, endPoint: .bottom)
            
            VStack {
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.white)
                    TextField("Enter your email", text: $email)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.white)
                    TextField("Enter your email", text: $email)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                })
                .frame(maxWidth: .infinity)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            
            VStack {
                Spacer()
                Text("All rights reserved")
                    .foregroundColor(.white)
                    .padding()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
