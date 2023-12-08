//
//  MainPageView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

enum MainPageTab {
    case home
    case explore
    case message
    case cart
    case my
}

struct MainPageView: View {
    
    @State private var selectedTab: MainPageTab = .home

    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $selectedTab) {
                    TaoPageView()
                        .tag(MainPageTab.home)
                    
                    ExplorePageView()
                        .tag(MainPageTab.explore)
                    
                    MessagePageView()
                        .tag(MainPageTab.message)
                    
                    CartPageView()
                        .tag(MainPageTab.cart)
                    
                    MyPageView()
                        .tag(MainPageTab.my)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                _MainPageViewTabBar(selectedTab: $selectedTab)
            }
        }
        
    }
}

struct _MainPageViewTabBar: View {
    @Binding
    var selectedTab: MainPageTab
    
    var body: some View {
        HStack {
            Image(selectedTab == .home ?
                  "taobao_logo" : "home")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onTapGesture {
                selectedTab = .home
            }
            Spacer()
            Image(selectedTab == .explore ? "guangguang_selected" : "guangguang").resizable().aspectRatio(contentMode: .fit).onTapGesture {
                selectedTab = .explore
            }
            Spacer()
            Image(selectedTab == .message ?
                  "ios_msg_tab_selected" : "ios_msg_tab_nm").resizable().aspectRatio(contentMode: .fit).onTapGesture {
                selectedTab = .message
            }
            Spacer()
            Image(selectedTab == .cart ?
                  "cart_fill" : "cart").resizable().aspectRatio(contentMode: .fit).onTapGesture {
                selectedTab = .cart
            }
            Spacer()
            Image(selectedTab == .my ?
                  "my_fill" : "my").resizable().aspectRatio(contentMode: .fit).onTapGesture {
                selectedTab = .my
            }
        }
        .padding(.horizontal, 10)
        .frame(height: 50)
        
    }
}

#Preview {
    MainPageView()
//    _MainPageViewTabBar(selectedTab: .constant(.home))
//        .background(Color.gray)
}
