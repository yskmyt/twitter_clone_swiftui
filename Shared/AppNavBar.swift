//
//  AppNavBar.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/06/27.
//

import SwiftUI

struct AppNavBar: View {
    @State var showActionSheet = false
    
    var body: some View {
        HStack {
            Button(action: {
                print("ハンバーガー")
            }) {
                Image(systemName: "line.horizontal.3")
                    .renderingMode(.original)         }
            .padding()
            
            Spacer()
            Text("センター")
            Spacer()
            
            Button(action: {
                self.$showActionSheet.wrappedValue.toggle()
            }) {
                Image(systemName: "sparkles")
                    .renderingMode(.original)
            }
            .padding()
            .actionSheet(isPresented: self.$showActionSheet, content: {
                ActionSheet(title: Text("最新ツイートがタイムラインに表示されます"),
                    message: Text(""),
                    buttons: [
                        .default(Text("切り替え"), action: {

                        }),
                        .default(Text("コンテンツ設定を表示"), action: {
                            
                        }),
                        .cancel()
                    ]
                )
            })
        }
    }
}

struct AppNavBar_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBar()
    }
}
