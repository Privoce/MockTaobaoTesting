//
//  ItemGridViewModel.swift
//  MockTaobao
//
//  Created by Vincent Wang on 12/7/23.
//

import Foundation

class ItemGridViewModel: ObservableObject {
    
    @Published var items: [ItemGridItemData] = itemGridItems
    
    func populateData() {
        items.append(contentsOf: prepareBatch(count: 10))
    }
    
    func prepareBatch(count: Int) -> [ItemGridItemData]{
        var newItems: [ItemGridItemData] = []
        
        for _ in 0...count{
            let index = Int.random(in: 1...4)
            let mockData = itemGridItems[index]
            let newItem = ItemGridItemData(
                imageName: mockData.imageName, videoName: mockData.videoName,
                title: mockData.title, price: mockData.price, numOfPeoplePaid: mockData.numOfPeoplePaid)
            newItems.append(newItem)
        }
        
        return newItems
    }
    
    func shouldLoad(item: ItemGridItemData) -> Bool {
        return item == items.last
    }
}

struct ItemGridItemData: Hashable {
    var id: UUID = UUID()
    
    var imageName: String?
    var videoName: String?
    var title: String
    var price: Int
    var numOfPeoplePaid: Int
}

let itemGridItems: [ItemGridItemData] = [
    ItemGridItemData(
        videoName: "video3",
        title: "商品描述1 商品描述1 商品描述1 ", price: 1234, numOfPeoplePaid: 123),
    ItemGridItemData(
        imageName: "photo26",
        title: "商品描述2 商品描述2 商品描述2 ", price: 2345, numOfPeoplePaid: 234),
    ItemGridItemData(
        imageName: "photo30",
        title: "商品描述3 商品描述3 商品描述3 ", price: 3456, numOfPeoplePaid: 345),
    ItemGridItemData(
        imageName: "photo73",
        title: "商品描述4 商品描述4 商品描述4 ", price: 4567, numOfPeoplePaid: 456),
    ItemGridItemData(
        imageName: "photo76",
        title: "商品描述5 商品描述5 商品描述5 ", price: 5678, numOfPeoplePaid: 567)
]
