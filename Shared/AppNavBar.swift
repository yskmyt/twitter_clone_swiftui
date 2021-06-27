//
//  AppNavBar.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/06/27.
//

import SwiftUI

struct AppNavBar: View {
    var body: some View {
        HStack {
            Button(action: {
                print("ハンバーガー")
            }) {
                Image(systemName: "line.horizontal.3")
                    .renderingMode(.original)
            }.padding()
            Spacer()
            Text("センター")
            Spacer()
            Button(action: {
                print("右アイテム")
            }) {
                Image(systemName: "sparkles")
                    .renderingMode(.original)
            }.padding()
        }
    }
}

struct AppNavBar_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBar()
    }
}
