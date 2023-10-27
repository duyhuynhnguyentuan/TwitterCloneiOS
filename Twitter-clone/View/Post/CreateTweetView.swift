//
//  CreateTweetView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 27/10/2023.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""
    var body: some View {
        VStack{
            HStack{
                Button{
                    
                }label: {
                    Text("Cancel")
                }
                Spacer()
                Button{
                    
                }label: {
                    Text("Tweet")
                        .padding()
                    
                }
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            MultilineTextField(text: $text)
            
        }
        .padding()
    }
}

#Preview {
    CreateTweetView()
}
