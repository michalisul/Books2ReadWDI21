//
//  BookRow.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    
    
    var body: some View {
        HStack {
            book.coverImage
                .resizable()
                .frame(width: 50, height: 80)
            Text(book.title)
                .font(.headline)
            Spacer()
            Text(book.author)
                .font(.body)
            Image(systemName: book.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .padding()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var books = ModelData().books
    
    static var previews: some View {
        BookRow(book: books[1])
    }
}
