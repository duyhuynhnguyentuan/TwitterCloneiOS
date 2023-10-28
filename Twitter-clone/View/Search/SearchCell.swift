//
//  SearchCell.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 28/10/2023.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweet = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("Hello")
                .fontWeight(.heavy)
            Text(tweet + " Tweets").fontWeight(.light)
        }
        
    }
}

#Preview {
    SearchCell()
}
