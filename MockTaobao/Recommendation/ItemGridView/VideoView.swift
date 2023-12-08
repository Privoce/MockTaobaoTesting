//
//  VideoView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    let videoName: String
    var videoExtension: String = "mp4"
    
    @State private var player: AVPlayer?
    
    var body: some View {
        
        
        VideoPlayer(player: player)
            .onAppear {
//                if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
//                    self.player = AVPlayer(url: url)
//                    
//                    NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player?.currentItem, queue: .main) { _ in
//                        self.player?.seek(to: CMTime.zero)
//                        self.player?.play()
//                    }
//                    
//                    self.player?.play()
//                }
            }
            .onDisappear {
                NotificationCenter.default.removeObserver(self)
            }
    }
}

#Preview {
    
    VideoView(videoName: "video3", videoExtension: "mp4")
}
