//
//  MainIconButton.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct MainIconButton: View {
    var iconName: String
    var iconSize: Double = 18
    var backgroundColor: Color
    var textColor: Color = .orange
    var title: String
    
    var body: some View {
        
        HStack{
            Image(iconName)
                .resizable()
                .frame(width: iconSize, height: iconSize)
                
            Text(title)
                .font(.system(size: iconSize * 0.8))
                .foregroundColor(textColor)
        }
        .padding(8)
        .background(backgroundColor)
        .cornerRadius(iconSize)
    }
}

#Preview {
    MainIconButton(iconName: "photo6",
                   backgroundColor: .orange.opacity(0.5),
                   title: "MainIconButton")
}
