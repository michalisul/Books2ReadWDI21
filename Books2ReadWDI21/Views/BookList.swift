//
//  BookList.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct BookList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showCompleted = true
        
    private var sortedByDifficulty: [Book] {
        modelData.books.sorted { $0.priority < $1.priority }
    }
    
    var filteredBooks: [Book] {
        sortedByDifficulty.filter { book in
            (showCompleted || !book.completed)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showCompleted) {
                    Text("Show Completed")
                }
                ForEach(filteredBooks) { book in
                    NavigationLink(
                        destination: BookDetail(book: book)) {
                        BookRow(book: book)
                        }
                } // adding .onDelete { indexSet in if let index = indexSet.first { modelData.deleteBook(sortedByDifficulty[index]) print(indexSet) } }
            }
        .navigationTitle("Books")
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            BookList()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
