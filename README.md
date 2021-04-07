# Books2ReadWDI21

Żeby nie pojawiał się problem z indeksami, modyfikator .onDelete w pliku BookList.swift powinien wyglądać tak:

.onDelete { indexSet in
                    if let index = indexSet.first {
                        modelData.deleteBook(sortedByDifficulty[index])
                        print(indexSet)
                    }
                }

Przepraszam za błąd w prezentacji. Zamiast posortowanej listy użyłem w rozpędu oryginalną listę do wyboru indeksu.

Pozdrrawiam.
