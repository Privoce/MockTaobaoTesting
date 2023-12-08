//
//  ItemDetailRecommentationView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailRecommentationView: View {
    var body: some View {
        VStack {
            HStack {
                Text("店铺推荐")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Text("查看全部")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
            }
            
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], content: {
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
                _ItemDetailRecommentationItemView(imageName: "photo76", title: "Description", price: 123)
            })
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct _ItemDetailRecommentationItemView: View{
    let imageName: String
    let title: String
    let price: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8)
            Text(title)
                .font(.system(size: 16, weight: .regular))
            Text("¥ \(price)")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
        }
    }
}

#Preview {
    ItemDetailRecommentationView()
}
