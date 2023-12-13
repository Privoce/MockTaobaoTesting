//
//  ItemGalleryView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/6/23.
//

import SwiftUI

struct ItemGalleryView: View {
    let photos = ["photo30", "photo42", "photo50"]
    
    @State private var currentIndex = 0
    @State private var timer: Timer?
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentIndex) {
                ForEach(photos.indices, id: \.self) { index in
                    Image(photos[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = .clear
                UIPageControl.appearance().pageIndicatorTintColor = .clear
            }
            
            HStack(spacing: 8) {
                ForEach(photos.indices, id: \.self) { page in
                    Capsule()
                        .frame(width: page == currentIndex ? 20 : 8, height: 8)
                        .foregroundColor(page == currentIndex ? .orange : .gray)
                }
            }
            .padding()
        }
        .onAppear {
            startTimer()
        }
        .onDisappear {
            endTimer()
        }
        .aspectRatio(2, contentMode: .fill)
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                withAnimation {
                    currentIndex = (currentIndex + 1) % photos.count
                }
                
            }
        }
    
    private func endTimer() {
        timer?.invalidate()
        timer = nil
    }
}


#Preview {
    ItemGalleryView()
}
