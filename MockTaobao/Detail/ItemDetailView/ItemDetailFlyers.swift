//
//  ItemDetailFlyers.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailFlyers: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<47) {index in
                let imageName = "list_\(index)"
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

#Preview {
    ScrollView {
        ItemDetailFlyers()
    }
}
