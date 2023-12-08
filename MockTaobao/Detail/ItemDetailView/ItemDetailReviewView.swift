//
//  ItemDetailReviewView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailReviewView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("宝贝评价 (400+)")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Text("查看全部")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
            }
          
            HStack(spacing: 10) {
                RemarkTagView(text: "有差价(6)")
                RemarkTagView(text: "上身效果很好(6)")
                RemarkTagView(text: "尺码合适(6)")
            }
            
            Spacer()
                .frame(height: 20)
            
            ReviewTile(reviewText: "起球，一点都不好")
            ReviewTile(reviewText: "衣服品质很一般")
            
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}


struct RemarkTagView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 12, weight: .regular))
            .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
            .padding(.horizontal, 4)
            .padding(.vertical, 4)
            .background(Color(red: 250/255, green: 235/255, blue: 228/255))
            .cornerRadius(4)
    }
}

struct ReviewUserBar: View {
    let size: CGFloat = 20
    
    var body: some View {
        Image("head")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.orange, lineWidth: 2)
            )
            .shadow(radius: 5)
    }
}

struct ReviewTile: View {
    let reviewText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                ReviewUserBar()
                Text("匿名买家")
                    .font(.system(size: 14, weight: .semibold))
            }
            
            Text(reviewText)
                .font(.system(size: 14))
        }
    }
}

#Preview {
    ItemDetailReviewView()
}
