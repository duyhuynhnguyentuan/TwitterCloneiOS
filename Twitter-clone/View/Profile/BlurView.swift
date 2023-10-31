//
//  BlurView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 31/10/2023.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
    return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

