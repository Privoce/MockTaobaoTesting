//
//  ExplorePageView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ExplorePageView: View {
    var body: some View {
        VStack {
            Text("负载开关")
            
            Toggle("not in use", isOn: .constant(false))
            Toggle("not in use", isOn: .constant(false))
            Toggle("not in use", isOn: .constant(false))
            Toggle("启动网络图片、首页视频、gif图", isOn: .constant(true))
            Toggle("not in use", isOn: .constant(false))
            
            Text("注意：修改设置后退出应用，重新启动生效")
        }
    
    }
}

struct ExplorePageSwitch: View {
    let text: String
    @Binding var isOn: Bool
    
    var body: some View {
        
            Toggle("\(text)", isOn: $isOn)
        
    }
}

#Preview {
    ExplorePageView()
}
