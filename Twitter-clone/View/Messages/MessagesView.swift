//
//  MessagesView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<9) { _ in
                MessageCell()
            }
        }
    }
}

#Preview {
    MessagesView()
}
