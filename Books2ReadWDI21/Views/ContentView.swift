//
//  ContentView.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            BookList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
