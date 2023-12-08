//
//  ItemDetailPriceTagView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailPriceTagView: View {
    
    let price: Int
    let discountPrice: Int
    let remarks: [String]
    let description: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("¥ \(price)")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.red)
                Text("热销款券后 ¥ \(discountPrice)")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(.red)
                    .cornerRadius(20)
            }
            HStack {
                HStack {
                    ForEach(remarks.indices, id:\.self) {index in
                        Text(remarks[index])
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                            .padding(.horizontal, 4)
                            .padding(.vertical, 4)
                            .background(Color(red: 250/255, green: 235/255, blue: 228/255))
                            .cornerRadius(4)
                            
                    }
                }
                Spacer()
                HStack {
                    Text("领券")
                        .font(.system(size: 14))
                    .foregroundColor(Color(red: 217/255, green: 113/255, blue: 67/255))
                    Image(systemName: "chevron.forward")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 217/255, green: 123/255, blue: 67/255))
                        
                }
            }
            Text(description)
                .font(.system(size: 18, weight: .semibold))
                
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

#Preview {
    ItemDetailPriceTagView(price: 222, discountPrice: 200, remarks: [
    "淘宝币可抵14.34元起","商品券满300减200"
    ], description: "HUAWEI 华为畅享10千元智能游戏老年人学生手机官方管网正品"    )
    .padding(4)
    .background(Color.gray)
}
