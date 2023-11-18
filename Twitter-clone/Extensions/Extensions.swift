//
//  Extensions.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 28/10/2023.
//

import UIKit
import SwiftUI
extension UIApplication {
///close the keyboard
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
    func placeholder<Content:View>(
                                   when shouldShow: Bool,
                                   alignment: Alignment = .leading,
                                   @ViewBuilder placeholder: () -> Content) -> some View {
                                       ZStack(alignment: alignment){
                                           placeholder().opacity(shouldShow ? 1 : 0)
                                           self
                                       }
    }
}

