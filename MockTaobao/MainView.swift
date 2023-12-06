//
//  ContentView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 1

    var body: some View {
        // Tab bar customization
        MainViewTabBar(selectedTab: $selectedTab)
            .padding(.horizontal, 4)
        SearchBar()
            .padding(.horizontal, 4)
        
        
        VStack {
            TabView(selection: $selectedTab) {
                SubscriptionView()
                    .tag(0)

                RecommendationView()
                    .tag(1)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Enable swipe gestures
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    MainView()
}
