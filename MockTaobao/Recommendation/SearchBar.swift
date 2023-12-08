//
//  SearchBar.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/5/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image("photo13")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 18, height: 18)
            Divider()
                .frame(width: 1, height: 20)
                .overlay(.black)
            Text("test text")
                .font(.system(size: 18))
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

#Preview {
    SearchBar()
        .padding(20)
}
