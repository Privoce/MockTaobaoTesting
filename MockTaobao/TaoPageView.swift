//
//  ContentView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct TaoPageView: View {
    @State private var selectedTopTab = 1
    
    var body: some View {
        
        VStack {
            TaoPageTabBar(selectedTab: $selectedTopTab)
                .padding(.horizontal, 4)
            SearchBar()
                .padding(.horizontal, 4)
            
            TabView(selection: $selectedTopTab) {
                SubscriptionView()
                    .tag(0)
                
                RecommendationView()
                    .tag(1)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        
    }
    
    
}

#Preview {
    TaoPageView()
}
