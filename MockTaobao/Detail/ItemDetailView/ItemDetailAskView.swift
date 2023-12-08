//
//  ItemDetailAskView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailAskView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("问大家 (5)")
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
               
                Image(systemName: "chevron.forward")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
            }
            
            HStack {
                Text("问")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                Text("严重缩水啊！缩了一大半啊！")
                    .font(.system(size: 12))
                    .lineLimit(1)
                Spacer()
                Text("6个回答")
                    .font(.system(size: 12))
                    .lineLimit(1)
                    .foregroundColor(.gray)
                
            }
            
            HStack {
                Text("问")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                Text("请问厚不厚")
                    .lineLimit(1)
                    .font(.system(size: 12))
                Spacer()
                Text("6个回答")
                    .font(.system(size: 12))
                    .lineLimit(1)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

#Preview {
    ItemDetailAskView()
}
