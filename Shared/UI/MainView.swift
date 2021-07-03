//
//  MainVIew.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appState: AppState
    @Binding var showMenu: Bool
    @State var showActionSheet = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                TabView(selection: $appState.selectedTabItem) {
                    ForEach(0..<TabViewItem.allCases.count) { index in
                        TabViewItem.allCases[index].view()
                            .tabItem {
                                Image(systemName: TabViewItem.allCases[index].imageName())
                            }.tag(TabViewItem.allCases[index])
                    }
                }.font(.largeTitle)
            }
            .navigationBarTitle("Clone", displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                   withAnimation {
                       self.showMenu.toggle()
                   }
                }) {
                   Image(systemName: "line.horizontal.3")
                       .imageScale(.large)
                },trailing:
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
                                $appState.selectedTabItem.wrappedValue = .message
                            }),
                            .default(Text("コンテンツ設定を表示"), action: {
                                
                            }),
                            .cancel()
                        ]
                    )
                })
            )
        }
    }
}

struct MainVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainView(showMenu: .constant(false))
    }
}

enum TabViewItem: Int, CaseIterable {
    case home = 0
    case search = 1
    case notification = 2
    case message = 3
    
    @ViewBuilder
    func view() -> some View {
        switch self {
        case .home:
            HomeView()
        case .search:
            Text("SEARCH")
        case .notification:
            Text("NOTIFICATION")
        case .message:
            Text("MESSAGE")
        }
    }
    
    func imageName() -> String {
        switch self {
        case .home:
            return "house.circle"
        case .search:
            return "magnifyingglass.circle"
        case .notification:
            return "bell.circle"
        case .message:
            return "envelope.circle"
        }
    }
}
