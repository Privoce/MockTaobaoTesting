//
//  ItemDetailShopInfo.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailShopInfo: View {
    
    let avatarSize: CGFloat = 64
    
    var body: some View {
        ZStack {
            ItemDetailShopInfoBackground()
            VStack {
                HStack {
                    Image("photo72")
                        .resizable()
                        .frame(width: avatarSize, height:avatarSize)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text("旗舰店")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                        HStack {
                            Text("天猫")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .frame(height: 20)
                                .background(Color.red)
                                .cornerRadius(12)
                                
                            HStack {
                                Text("综合体验")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12))
                                    .lineLimit(1)
                                Image("buy")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 20)
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .frame(width: .infinity, height: 20)
                            .background(Color.gray)
                            .cornerRadius(12)
                            
                            Text("3.2万粉丝")
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                        }
                        Text("宝贝描述 4.6 低 宝贝描述 4.6 低 宝贝描述 4.6 低")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    
                    }
                    
                }
                
                HStack(spacing: 16) {
                    Text("进店逛逛")
                        .foregroundColor(.red)
                        .font(.system(size: 14))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white)
                        .cornerRadius(4)
                    Text("全部宝贝")
                        .foregroundColor(.red)
                        .font(.system(size: 14))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white)
                        .cornerRadius(4)
                }
            }
            .padding()
        }
        .cornerRadius(8)
    }
}

#Preview {
    ItemDetailShopInfo()
        .background(Color.gray)
}

struct ItemDetailShopInfoBackground: View {
    let bgColor = Color(red: 0.5, green: 0.0, blue: 0.0)
    
    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [bgColor .opacity(0.6), Color.red.opacity(0.2)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .background(Color.black)
    }
}
