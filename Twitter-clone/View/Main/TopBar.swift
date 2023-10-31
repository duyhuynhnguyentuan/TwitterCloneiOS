//
//  TopBar.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 29/10/2023.
//

import SwiftUI

struct TopBar: View {
    
    @State var width = UIScreen.main.bounds.width
    @Binding var x: CGFloat
    var body: some View {
        VStack{
            HStack{
                Button{
                    withAnimation{
                        x = 0
                    }
                }label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                }
                Spacer()
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                Spacer()
            }
            .padding()
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
        .padding(.top)
    }
}

//#Preview {
//    TopBar()
//}
