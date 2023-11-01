//
//  TabButton.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 01/11/2023.
//

import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var currentTab: String
    var animation:Namespace.ID
    var body: some View {
        Button {
            
        }label: {
            LazyVStack(spacing: 12){
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(currentTab == title ? .blue : .gray)
                .padding(.horizontal)
                if currentTab == title {
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }else{
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        }
    }
}

//#Preview {
//    TabButton()
//}
