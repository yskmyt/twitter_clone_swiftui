//
//  MenuListView.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0..<MenuItem.allCases.count) { index in
                    HStack(alignment: .center) {
                        if !MenuItem.allCases[index].imageName().isEmpty {
                            Image(systemName: MenuItem.allCases[index].imageName())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        Text(MenuItem.allCases[index].title())
                            .fontWeight(.semibold)
                            .padding(.leading, 8)
                    }.onTapGesture {
                        print(MenuItem.allCases[index].title())
                    }

                    if index == MenuItem.profit.rawValue {
                        Spacer()
                    }
                }
                .padding(.vertical, 8)
                .listRowBackground(Color.gray)
            }
        }.padding()
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

enum MenuItem: Int, CaseIterable {
    case profile = 0
    case list = 1
    case topic = 2
    case bookmark = 3
    case moment = 4
    case profit = 5
    case setting = 6
    case help = 7
    
    func title() -> String {
        switch self {
        case .profile:
            return "プロフィール"
        case .list:
            return "リスト"
        case .topic:
            return "トピック"
        case .bookmark:
            return "ブックマーク"
        case .moment:
            return "モーメント"
        case .profit:
            return "収益を得る"
        case .setting:
            return "設定とプライバシー"
        case .help:
            return "ヘルプセンター"
        }
    }
    
    func imageName() -> String {
        switch self {
        case .profile:
            return "person"
        case .list:
            return "list.bullet.rectangle"
        case .topic:
            return "text.bubble"
        case .bookmark:
            return "bookmark"
        case .moment:
            return "bolt"
        case .profit:
            return "star"
        case .setting:
            return ""
        case .help:
            return ""
        }
    }
}
