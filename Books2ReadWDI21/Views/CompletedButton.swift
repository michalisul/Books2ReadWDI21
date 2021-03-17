//
//  CompletedButton.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct CompletedButton: View {
    // add reference to ModeData
    @Binding var isSet: Bool
    // add didSet to isSet
    
    //pass index value
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "checkmark.circle.fill" : "circle")
        }
    }
}

struct CompletedButton_Previews: PreviewProvider {
    static var previews: some View {
        CompletedButton(isSet: .constant(false))
        // updating preview
    }
}

