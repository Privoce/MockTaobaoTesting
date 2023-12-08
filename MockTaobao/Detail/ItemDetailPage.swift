//
//  ItemDetailView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailPage: View {
    var body: some View {
        VStack {
            ItemDetailBar()
                .padding(.horizontal, 8)
            ItemDetailTabBar()
            ItemDetailView()
            ItemDetailBottomBar()
        }
        .navigationBarBackButtonHidden()
        .background(Color(red: 245/255, green: 245/255, blue: 245/255))
        
        
        
    }
}

#Preview {
    ItemDetailPage()
}
