//
//  ContentView.swift
//  ThanachokCard
//
//  Created by Schweppe on 14/3/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.90, green: 0.49, blue: 0.13)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("web")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 250.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(Color.white,lineWidth : 5))

                Text("Thanachok Rattanamoraa")
                    .font(Font.custom("Pacifico-Regular", size: 32))
                    .bold()
                .foregroundColor(.white )
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView( text: "+66 80 073 3850", imageName: "phone.fill")
                InfoView(text:"thanachok.ratt@gmail.com",imageName: "envelope.fill")
                
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 35)
        
            .frame(height: 60.0)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.brown)
                Text(text)
            })
            .padding(.all)
    }
}
