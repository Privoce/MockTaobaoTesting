//
//  ItemDetailBottomBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailBottomBar: View {
    var body: some View {
        HStack(spacing: 18) {
            ItemDetailBarTextIcon(iconName: "dianpu", text: "店铺")
            ItemDetailBarTextIcon(iconName: "kefu", text: "客服")
            ItemDetailBarTextIcon(iconName: "shoucang", text: "收藏")
            Spacer()
            ItemDetailBarCapsuleButton()
        }
        .padding(.horizontal, 8)
    }
}

struct ItemDetailBarTextIcon: View {
    let iconName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height:  24)
            Text(text)
                .font(.system(size: 12))
        }
    }
}

struct ItemDetailBarCapsuleButton: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("加入购物车")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
                .background(Color(red: 240/255, green: 184/255, blue: 63/255))
                
                
                Text("立即购买")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
                .background(Color(red: 233/255, green: 118/255, blue: 46/255))
                
        }
        
        .font(.system(size: 16, weight: .semibold))
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}

#Preview {
    ItemDetailBottomBar()
}
