//
//  BookDetail.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct BookDetail: View {
    @EnvironmentObject var modelData: ModelData
    var book: Book
    
    var bookIndex: Int {
        modelData.books.firstIndex(where: { $0.id == book.id })!
    }
    
    var body: some View {
        ScrollView {
            CoverImage(image: book.coverImage)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: book.authorImage)
                .offset(y: -110)
                .padding(.bottom, -160)
            
        VStack(alignment: .leading) {
            HStack {
                Text(book.title)
                    .font(.title)
                    .foregroundColor(.primary)
                Spacer()
                CompletedButton(isSet: $modelData.books[bookIndex].completed)
                // update button parameters
            }
                    HStack {
                        Text(book.author)
                            .font(.subheadline)
                        Spacer()
                        Group {
                            Text("priority:")
                            Text(book.priority.rawValue)
                                .bold()
                        }
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
            Divider()
            Text("About this book")
                .font(.title2)
                .padding(.bottom, 6)
            Text(book.about)
                }
        .padding()
        }
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        BookDetail(book: modelData.books[0])
            .environmentObject(modelData)
    }
}
