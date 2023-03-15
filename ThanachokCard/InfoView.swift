//
//  InfoView.swift
//  ThanachokCard
//
//  Created by Schweppe on 15/3/2566 BE.
//

import SwiftUI

struct infoView: View {
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
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"Helloooo", imageName:"phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
