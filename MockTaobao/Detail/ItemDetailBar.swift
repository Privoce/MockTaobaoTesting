//
//  ItemDetailBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import SwiftUI

struct ItemDetailBar: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
       
        
        HStack {
            RoundButton(iconName: "chevron.backward", action: {
                self.presentationMode.wrappedValue.dismiss()
            })
            Image(systemName: "magnifyingglass")
            Spacer()
            RoundButton(iconName: "arrowshape.turn.up.forward.fill", action: {})
            RoundButton(iconName: "cart.fill", action: {})
            RoundButton(iconName: "ellipsis", action: {})
        }
    }
}

struct RoundButton: View {
    let iconName: String
    let size: CGFloat = 14
    let action: () -> Void
    
    var body: some View {
           Button(action: {
               self.action()
           }) {
               Image(systemName: iconName)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: size, height: size)
                   .foregroundColor(.white)
                   .padding(6)
           }
           .background(Color.black)
           .clipShape(Circle())
       }
}

#Preview {
    ItemDetailBar()
}
