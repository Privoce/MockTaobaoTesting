//
//  UserSettings.swift
//  MockTaobao
//
//  Created by Vincent Wang on 2/27/24.
//

import Foundation
class UserSettings: ObservableObject {
    @Published var enableMainPageVideo: Bool
    
    init(enableMainPageVideo: Bool) {
        self.enableMainPageVideo = enableMainPageVideo
    }
}
