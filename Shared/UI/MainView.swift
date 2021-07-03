//
//  MainVIew.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack {
            AppNavBar(showMenu: self.$showMenu)
            
            TabView {
                Text("HOME")
                    .tabItem {
                        Image(systemName: "house.circle")
                    }
                Text("SEARCH")
                    .tabItem {
                        Image(systemName: "magnifyingglass.circle")
                    }
                Text("NOTIFICATION")
                    .tabItem {
                        Image(systemName: "bell.circle")
                    }
                Text("MESSAGE")
                    .tabItem {
                        Image(systemName: "envelope.circle")
                    }
            }.font(.headline)
        }
    }
}

struct MainVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainView(showMenu: .constant(false))
    }
}
