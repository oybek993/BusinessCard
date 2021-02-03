//
//  ContentView.swift
//  BusinessCard
//
//  Created by Oybek on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("profile_png")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Hello, world!")
                    .fontWeight(.bold)
                    .padding()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("IOS developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(icon: "phone.fill", text: "+1 646 979 81 81")
                InfoView(icon: "envelope.fill", text: "someone@somewhere.com")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

