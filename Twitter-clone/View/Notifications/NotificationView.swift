//
//  NotificationView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView{
            ForEach(0..<9){ _ in
                 NotificationCell()
            }
        }
    }
}

#Preview {
    NotificationView()
}
