//
//  ContentView.swift
//  Bacon
//
//  Created by Sharence Solomero on 4/27/20.
//  Copyright © 2020 Sharence Solomero. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var imageName: String = "chance"
    var walletAmount: Double = 40.00
    
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
                    .font(Font.custom("Montserrat-Regular", size: 14))

                //Photo
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 65, height: 65, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color("Gold"), lineWidth: 3))
                    .padding()
                
                //Amount, bacon wallet
                Text("$ \(String(format: "%0.2f", walletAmount))")
                    .foregroundColor(.white)
                    .font(Font.custom("Montserrat-Medium", size: 24))
                    .padding(.bottom, 5)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Bread Wallet")
                        .foregroundColor(.white)
                        .font(Font.custom("Montserrat-Medium", size: 14))
                }
                
                Spacer()
                
                //Actions
                HStack{
                    
                    //Send Button
                    VStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            ActionIconView(imageName: "send")
                        }
                        .buttonStyle(ActionButtonStyle())
                        
                        Text("Pay")
                            .foregroundColor(.white)
                            .font((Font.custom("Montserrat-Regular", size: 16)))
                    }
                    
                    Spacer()
                    
                    VStack {
                        //Request Button
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            ActionIconView(imageName: "request")
                        }
                        .buttonStyle(ActionButtonStyle())
                        
                        Text("Request")
                            .foregroundColor(.white)
                            .font((Font.custom("Montserrat-Regular", size: 16)))
                    }
                    
                    Spacer()
                    
                    VStack {
                        //Action Button
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            ActionIconView(imageName: "qr_code")
                        }
                        .buttonStyle(ActionButtonStyle())
                        
                        Text("QR Code")
                            .foregroundColor(.white)
                            .font(Font.custom("Montserrat-Regular", size: 16))
                    }

                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                //Your activity & Incomplete
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        QuickAccessButton(buttonLabel: "Your Activity", iconString: "transactions")
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        QuickAccessButton(buttonLabel: "Incomplete", iconString: "pending")
                    }
                }
                .padding(.bottom, 80)
            }
        }
    }
}

struct ActionIconView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .foregroundColor(Color("Gradient Green"))
            .frame(width: 35, height: 35, alignment: .center)
    }
}

struct ActionButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(width: 75, height: 75)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

struct QuickAccessButton: View {
    
    let buttonLabel: String
    let iconString: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .stroke(Color.white, lineWidth:  2)
            .frame(height: 40)
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            .overlay(
                HStack {
                    Image(iconString)
                        .foregroundColor(.white)
                    Text(buttonLabel)
                        .font(Font.custom("Montserrat-Regular", size: 16))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
        
                },
                alignment: .center
                
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

