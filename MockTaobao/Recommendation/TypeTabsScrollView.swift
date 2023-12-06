//
//  HTypeScrollTabsView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct TypeTabsScrollView: View {
    
    
    let categories: [String] = [
        "首页",
        "家装",
        "电器",
        "奢品",
        "进口",
        "女装",
        "鞋靴",
        "百货",
        "手机",
        "箱包",
        "母婴",
        "男装",
        "食品",
        "内衣",
        "饰品",
        "美妆",
        "运动",
        "洗护",
        "数码",
        "企业",
        "车品",
        "保健",
        "生鲜",
        "医药"
    ]
    
    @State
    var selectedIndex: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) { // Adjust the spacing between text widgets
                ForEach(categories.indices, id: \.self) { index in
                    
                    Text(categories[index])
                        .foregroundColor(index == selectedIndex ? .orange : .black)
                        .font(.system(size: index == selectedIndex ? 15 : 14))
                        .onTapGesture {
                            selectedIndex = index
                        }
                }
            }
            .padding()
        }
    }
}

#Preview {
    TypeTabsScrollView()
}
