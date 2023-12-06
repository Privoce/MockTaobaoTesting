//
//  MainViewTabBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct MainViewTabBar: View {
    
    @Binding
    var selectedTab: Int
    
    var body: some View {
        HStack(spacing: 0) {
            MainIconButton(iconName: "photo6", backgroundColor: Color(red: 226/255, green: 195/255, blue: 169/255),
                           textColor: Color(red: 184/255, green: 80/255, blue: 68/255),
                           title: "签到")
            Spacer()
            HStack(spacing: 20) {
                MainTabBarButton(text: "订阅", isSelected: selectedTab == 0) {
                    withAnimation {
                        selectedTab = 0
                    }
                }
                MainTabBarButton(text: "推荐", isSelected: selectedTab == 1) {
                    withAnimation {
                        selectedTab = 1
                    }
                }
            }
            Spacer()
            MainIconButton(iconName: "photo46", backgroundColor: Color(red: 226/255, green: 195/255, blue: 169/255),
                           textColor: Color(red: 184/255, green: 80/255, blue: 68/255),
                           title: "会员码")
         
        }
        .background(Color.white.edgesIgnoringSafeArea(.top))
    }
}

#Preview {
    MainViewTabBar(selectedTab: .constant(0))
}
