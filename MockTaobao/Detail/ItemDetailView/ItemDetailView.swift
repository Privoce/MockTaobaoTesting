//
//  ItemDetailView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                ItemDetailGalleryView()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(
                        width: UIScreen.main.bounds.width,
                        height: UIScreen.main.bounds.width)
                ItemDetailPriceTagView(price: 222, discountPrice: 200, remarks: ["淘宝币可抵14.34元起","商品券满300减200"], description: "HUAWEI 华为畅享10千元智能游戏老年人学生手机官方管网正品")
                    .padding(.horizontal, 8)
                    
                    
                ItemDetailDescriptionView()
                    .padding(.horizontal, 8)
                    
                    
                ItemDetailReviewView()
                    .padding(.horizontal, 8)
                    
                
                ItemDetailAskView()
                    .padding(.horizontal, 8)
                    
                
                ItemDetailShopInfo()
                    .padding(.horizontal, 8)
                
                ItemDetailRecommentationView()
                    .padding(.horizontal, 8)
                
                ItemDetailFlyers()
                    
            }
            
        }
    }
}

#Preview {
    ItemDetailView()
        .background(Color.gray)
}
