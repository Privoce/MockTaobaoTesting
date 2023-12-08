//
//  ItemDetailDescriptionView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailDescriptionView: View {
    let imageSize: CGFloat = 30
    
    var body: some View {
        VStack {
            ItemDetailDescriptionTileView(title: "发货", content: VStack(alignment: .leading, spacing: 4){
                HStack {
                    Text("浙江杭州")
                        .font(.system(size: 16, weight: .heavy))
                    Text("快递：免运费")
                        .font(.system(size: 14))
                }
                Text("配送至：北京市 海淀区")
                    .font(.system(size: 12))
                Text("现货，付款后48小时发货")
                    .font(.system(size: 14))
            } )
            Divider()
                .foregroundColor(.gray)
                .frame(height: 1)
            ItemDetailDescriptionTileView(title: "保障", content: Text("假一赔四·极速退款·上门取退·七天无理由退款")
                .font(.system(size: 12)))
            Divider()
                .foregroundColor(.gray)
                .frame(height: 1)
            ItemDetailDescriptionTileView(title: "选择", content: HStack {
                Image("photo72")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageSize, height: imageSize)
                Image("photo72")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageSize, height: imageSize)
                Image("photo72")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageSize, height: imageSize)
                Spacer()
                Text("共10种颜色可选择")
                    .foregroundColor(Color(red: 167/255, green: 167/255, blue: 167/255))
                    .font(.system(size: 12, weight: .light))
                    .padding(4)
                    .background(Color(red: 238/255, green: 238/255, blue: 238/255))
                    .cornerRadius(4)
            })
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct ItemDetailDescriptionTileView<Content: View>: View {
    let title: String
    let content: Content
    
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 14))
            content
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.system(size: 14))
                
        }
    }
}



#Preview {
    ItemDetailDescriptionView()
        
}
