//
//  RecommendationView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                TypeTabsScrollView()
                MiniAppScrollView(scrollBarWidth: 100)
                ItemGridView()
            }
        }
       
            
    }
}

#Preview {
    RecommendationView()
}
