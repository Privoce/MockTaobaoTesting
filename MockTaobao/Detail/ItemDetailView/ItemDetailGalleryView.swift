//
//  ItemDetailGalleryView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI
import AVKit

struct ItemDetailGalleryView: View {
    @State private var currentIndex = 0
    
    let galleryItems: [GalleryItem] = [
        GalleryItem(media: .video(name: "video3")),
        GalleryItem(media: .image(name: "photo28")),
        GalleryItem(media: .image(name: "photo66")),
    ]
    
    var body: some View {
       
        LazyVStack {
            
            ZStack(alignment: .bottom) {
                    TabView(selection: $currentIndex) {
                        ForEach(galleryItems.indices, id: \.self) { index in
                            GalleryItemView(item: galleryItems[index])
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .onAppear {
                        UIPageControl.appearance().currentPageIndicatorTintColor = .clear
                        UIPageControl.appearance().pageIndicatorTintColor = .clear
                    }
                    
                    HStack(spacing: 8) {
                        ForEach(galleryItems.indices, id: \.self) { index in
                            Capsule()
                                .frame(width: index == currentIndex ? 20 : 8, height: 8)
                                .foregroundColor(index == currentIndex ? .orange : .gray)
                        }
                    }
                    .padding()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width
            )
        }
           
        
    }
}

struct GalleryItemView: View {
    let item: GalleryItem
    
    @State private var player: AVPlayer?
    
    var body: some View {
        switch item.media {
        case .image(let name):
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
        case .video(let name):
            VideoPlayer(player: player)
                .onAppear {
                    if let url = Bundle.main.url(forResource: name, withExtension: "mp4") {
                        self.player = AVPlayer(url: url)
                        self.player?.play()
                    }
                }
                .onDisappear {
                    self.player?.pause()
                }
                .aspectRatio(contentMode: .fill)
            
                
                
                
        }
    }
}

struct GalleryItem: Identifiable {
    let id = UUID()
    let media: Media
    
    enum Media {
        case image(name: String)
        case video(name: String)
    }
}

#Preview {
    ItemDetailGalleryView()
        .frame(width: UIScreen.main.bounds.width,
        height: UIScreen.main.bounds.width)
        
}
