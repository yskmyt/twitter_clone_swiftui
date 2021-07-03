//
//  MenuListView.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MenuListView: View {
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.systemGray
    }
    
    struct Item {
        let imageName: String
        let title: String
    }
    
    
    private let items = [
        Item(imageName: "person", title: "プロフィール"),
        Item(imageName: "list.bullet.rectangle", title: "リスト"),
        Item(imageName: "text.bubble",title: "トピック"),
        Item(imageName: "bookmark", title: "ブックマーク"),
        Item(imageName: "bolt", title: "モーメント"),
        Item(imageName: "star", title: "収益を得る")
    ]
    
    private let otherItems = [
        Item(imageName: "", title: "設定とプライバシー"),
        Item(imageName: "", title: "ヘルプセンター"),
    ]
    
    var body: some View {
        List {
            ForEach(0..<items.count) { index in
                HStack(alignment: .center) {
                    Image(systemName: items[index].imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text(items[index].title)
                        .fontWeight(.semibold)
                        .padding(.leading, 8)
                }
            }
            .padding(.vertical, 8)
            .listRowBackground(Color.gray)
            
            Spacer().listRowBackground(Color.gray)

            ForEach(0..<otherItems.count) { index in
                    Text(otherItems[index].title)
                        .fontWeight(.semibold)
            }
            .padding(.vertical, 8)
            .listRowBackground(Color.gray)
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
