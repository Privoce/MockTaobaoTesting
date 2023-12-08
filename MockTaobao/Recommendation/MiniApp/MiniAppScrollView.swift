//
//  MiniAppScrollView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct MiniAppScrollView: View {
    
    var scrollBarWidth: Double
    
    let rows = [GridItem(.flexible()), GridItem(.flexible())]
    
    @State private var scrollPosition: CGFloat = 0
    @State private var gridWidth: CGFloat = 1
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 16) {
                    ForEach(miniAppList.indices, id: \.self) { index in
                        let data = miniAppList[index]
                        VStack {
                            Image(data.iconName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 36, height: 36)
                            Text(data.appName)
                                .font(.system(size: 12))
                        }
                        .id(index)
                        
                    }
                }
                .background(GeometryReader { geometry in
                    Color.clear.preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                    Color.clear.onAppear {
                        gridWidth = geometry.size.width
                    }
                    
                    
                })
                .onPreferenceChange(ScrollOffsetPreferenceKey.self, perform: { value in
                    self.scrollPosition = -value.x / (gridWidth - UIScreen.main.bounds.width)
                })
            }
            .coordinateSpace(.named("scroll"))

                
            
            MiniAppScrollBar(scrollBarWidth: scrollBarWidth, scrollPosition: $scrollPosition)
                           
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}


struct MiniAppScrollBar: View {
    
    var scrollBarWidth: Double
    
    // The scroll Position is usually between 0 and 1.
    @Binding var scrollPosition: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.orange)
                .frame(width: 30, height: 10)
                .cornerRadius(10)
        }
        .frame(width: scrollBarWidth, height: 10)
        .offset(x: calculateOffset())
        .background(Color(red: 227/255, green: 227/255, blue: 227/255))
        .cornerRadius(10)
    }
    
    func calculateOffset() -> CGFloat {
        return self.scrollPosition * (scrollBarWidth - 30)
    }
}






#Preview {
    MiniAppScrollView(scrollBarWidth: 100)
}
