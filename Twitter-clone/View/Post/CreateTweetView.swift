//
//  CreateTweetView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 27/10/2023.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""
    @Binding var show : Bool
    @ObservedObject var viewModel = CreateTweetViewModel()
    var body: some View {
        VStack{
            HStack{
                Button{
                    self.show.toggle()
                }label: {
                    Text("Cancel")
                }
                Spacer()
                Button{
                    if text != "" {
                        self.viewModel.uploadPost(text: text)
                       
                    }
                    self.show.toggle()
                
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

//#Preview {
//    CreateTweetView()
//}
