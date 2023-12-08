//
//  ItemGridView.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/6/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ItemGridView: View {
    let lowHeight: CGFloat = 50
    let midHeight: CGFloat = 75
    let highHeight: CGFloat = 100
    
    let width = UIScreen.main.bounds.width / 2 - 16
    
    @StateObject private var viewModel = ItemGridViewModel()
    
    
    var body: some View {
       
            ItemGridTopItems()
                .frame(height: 500)
            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 10) {
                ForEach(viewModel.items, id: \.self) {data in
                    ItemGridTile(data: data)
                        .frame(height: 300)
                        .onAppear {
                            if viewModel.shouldLoad(item: data) {
                                viewModel.populateData()
                            }
                        }
                        .onTapGesture {
                            
                        }
                }
            }
            .padding()
        
    }
}

struct ItemGridTopItems: View {
    
    let width = UIScreen.main.bounds.width / 2 - 8
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.fixed(width)), GridItem(.fixed(width))], spacing: 4) {
            ForEach(0..<4) {index in
                switch index {
                case 0:
                    ItemGalleryView()
                        .padding(.horizontal, 4)
                        .frame(
                            width: width,
                            height: 300)
                        .cornerRadius(8)
                case 1:
                    VStack {
                        AnimatedImage(name: "gifgif.gif")
                            .frame(
                                width: width,
                                height: 144)
                            .cornerRadius(8)
                        ItemAdGridTile(title: "聚划算", subtitle: "", image1: "photo26", image1Text: "爆款直降", image2: "photo17", image2Text: "抢大红包")
                            .frame(
                                width: width,
                                height: 144)
                    }
                case 2:
                    ItemAdGridTile(title: "百亿补贴", subtitle: "品牌正品", subtitleColor:.pink, image1: "photo48", image1Text: "爆款直降", image2: "photo36", image2Text: "优质好货")
                        .frame(
                            width: width,
                            height: 150)
                case 3:
                    ItemAdGridTile(title: "有好货", subtitle: "用过才说好", image1: "photo43", image1Text: "爆款直降", image2: "photo39", image2Text: "优质好货")
                        .frame(
                            width: width,
                            height: 150)
                default:
                    Text("ends")
                }
                
                
            }
        }
    }
}

struct ItemTile: View {
    let text: String
    let height: CGFloat
    
    var body: some View {
        VStack {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: height)
                .background(Color.blue)
        }
        .padding()
    }
}



#Preview {
    ItemGridView()
}
