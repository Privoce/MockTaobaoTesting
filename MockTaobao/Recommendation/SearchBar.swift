//
//  SearchBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var barText = ""
    let placeholders: [String] = ["placeholder0", "placeholder1", "placeholder2", "placeholder3"]
    
    
    var body: some View {
        HStack {
            Image("photo13")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 18, height: 18)
            Divider()
                .frame(width: 1, height: 20)
                .overlay(.black)
            TextField("", text: $barText)
                .placeholder(when: barText.isEmpty) {
                    BarPlaceholder(texts: self.placeholders)
                }
                
            Spacer()
            Image("photo22")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 18, height: 18)
            Text("搜索")
                .font(.system(size: 12))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.vertical, 4)
                .padding(.horizontal, 10)
                .background(Color(red: 214/255, green: 126/255, blue: 67/255))
                .cornerRadius(24)
                .padding(.trailing, 1)
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 2)
        .frame(width: UIScreen.main
            .bounds.width, height: 28)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(.orange, lineWidth: 2))
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

#Preview {
    SearchBar()
        .padding(20)
}

struct BarPlaceholder: View {
    let texts: [String]
    @State private var currentIndex = 0
    @State private var yOffset: CGFloat = 0
    
    @State private var timer: Timer?
    
    var body: some View {
        VStack {
            
            ZStack {
                ForEach(texts.indices, id: \.self) { index in
                    Text(texts[index])
                        .foregroundColor(index == currentIndex ? .black : .clear)
                        .offset(y: calculateOffset(index: index))
                        .animation(.easeInOut(duration: 0.5), value: yOffset)
                }
            }
            .clipShape(Rectangle())
            
        }
        .onAppear {
            startTimer()
        }
        .onDisappear {
            endTimer()
        }
        
    }
    
    private func calculateOffset(index: Int) -> CGFloat {
            return CGFloat(index - currentIndex) * 20
        }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % texts.count
            }
            
        }
    }
    
    private func endTimer() {
        timer?.invalidate()
        timer = nil
    }
}
