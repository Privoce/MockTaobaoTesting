//
//  ItemGridTile.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI
import AVKit

struct ItemGridTile: View {
    
    var data: ItemGridItemData
    
    var body: some View {
        NavigationLink {
            ItemDetailPage()
        }
    label: {
        VStack(alignment: .leading) {
            if ((data.imageName) != nil) {
                Image(data.imageName!)
                    .resizable()
            }else if (data.videoName != nil) {
                VideoView(videoName: data.videoName!, videoExtension: "mp4")
            }else {
                Text("No Image")
            }
            
            Text(data.title)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .truncationMode(.tail)
            
            HStack(alignment: .firstTextBaseline) {
                Text("¥ \(data.price)")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.red)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Text("\(data.numOfPeoplePaid) 人付款")
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .truncationMode(.tail)
                Spacer()
                Image(systemName: "ellipsis")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20, alignment: .bottom)
                    .foregroundColor(.gray)
                
            }
        }
        .cornerRadius(8)
    }
    }
    
}




#Preview {
    ItemGridTile(data: ItemGridItemData(
        videoName: "video3",
        title: "Descriptions Descriptions Descriptions Descriptions Descriptions", price: 123, numOfPeoplePaid: 111))
}
