//
//  AppState.swift
//  twitter_clone_swiftui (iOS)
//
//  Created by Yusuke Miyata on 2021/07/04.
//

import Foundation

final class AppState: ObservableObject {
    @Published var isLogin = false
    @Published var selectedTabItem: TabViewItem = .home
}
