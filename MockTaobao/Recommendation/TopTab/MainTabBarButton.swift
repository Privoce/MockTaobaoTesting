//
//  MainTabBarButton.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct MainTabBarButton: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            Text(text)
                .font(isSelected ? .headline : .subheadline)
                .foregroundColor(isSelected ? .orange : .black)

            Rectangle()
                .frame(width: 30, height: 2)
                .foregroundColor(isSelected ? .orange : .clear)
        }
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    MainTabBarButton(text: "Text", isSelected: true, action: {})
}
