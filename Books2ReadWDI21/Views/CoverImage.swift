//
//  CoverImage.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct CoverImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable(resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage(image: Image("cover1"))
    }
}
