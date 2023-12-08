//
//  ItemDetailTabBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailTabBar: View {
    var body: some View {
        HStack(spacing: 20) {
            Text("宝贝")
            Text("评价")
            Text("详情")
            Text("推荐")
        }
    }
}

#Preview {
    ItemDetailTabBar()
}
