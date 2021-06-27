//
//  ContentView.swift
//  Shared
//
//  Created by Yusuke Miyata on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AppNavBar()
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
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
