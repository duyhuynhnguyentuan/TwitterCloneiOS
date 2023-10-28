//
//  SearchView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var isEditing = false
    var body: some View {
        VStack{
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            List(0..<9) { i in
                SearchCell(tag: "henlo", tweet: String(i))
            }.listStyle(.plain)
        }
    }
}

#Preview {
    SearchView()
}
