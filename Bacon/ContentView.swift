//
//  ContentView.swift
//  Bacon
//
//  Created by Sharence Solomero on 4/27/20.
//  Copyright © 2020 Sharence Solomero. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background
            LinearGradient(gradient: Gradient(colors: [Color("Dark Blue"), Color("Gradient Green")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                
                //Logo & Menu
                HStack(alignment: .center) {
                    Spacer()
                    Image("bacon_logo")
                        .resizable()
                        .frame(width: 70, height: 42, alignment: .center)
                    Spacer()
                    Image("Menu")
                }
                .padding(.top)
                .padding(.leading, (70/2 + 20))
                .padding(.trailing, 20)
                .padding(.bottom, 25)
            
                //Greeting
                Text("Good afternoon, Sharence!")
                    .foregroundColor(.white)
                    .font(Font.custom("Montserrat", size: 14))
                    .padding(.bottom)

                //Photo
                Image("chance")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color("Gold"), lineWidth: 3))
                

                //Amount, bacon wallet
                //Actions
                //Your activity
                //Incomplete
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

