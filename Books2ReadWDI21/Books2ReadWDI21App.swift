//
//  Books2ReadWDI21App.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

@main
struct Books2ReadWDI21App: App {
    @StateObject private var modelData = ModelData()
    
    // Firebase initialization
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
