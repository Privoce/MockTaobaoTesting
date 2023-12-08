//
//  ItemGridTile.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/6/23.
//

import SwiftUI

struct ItemAdGridTile: View {
    var title: String
    var subtitle: String
    var subtitleColor: Color = Color.blue
    var image1: String
    var image1Text: String
    var image2: String
    var image2Text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text(title)
                Text(subtitle)
                    .font(.system(size: 14))
                    .foregroundColor(subtitleColor)
            }
            HStack {
                VStack {
                    Image(image1)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text(image1Text)
                        .foregroundColor(.red)
                }
                VStack {
                    Image(image2)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text(image2Text)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    ItemAdGridTile(title: "title", subtitle: "subtitle", image1: "photo26", image1Text: "photo12", image2: "photo17", image2Text: "photo20")
        .frame(width: UIScreen.main.bounds.width / 2, height: 50)
            
}
