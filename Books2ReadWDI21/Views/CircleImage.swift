//
//  CircleImage.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        Group {
            image
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
        }
        .frame(width: 200, height: 200)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("author1"))
    }
}
