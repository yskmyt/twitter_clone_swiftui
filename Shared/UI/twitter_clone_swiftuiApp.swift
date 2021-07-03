//
//  twitter_clone_swiftuiApp.swift
//  Shared
//
//  Created by Yusuke Miyata on 2021/06/12.
//

import SwiftUI

@main
struct twitter_clone_swiftuiApp: App {
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
            let appState = AppState()
            ContentView()
                .environmentObject(appState)
                .onOpenURL(perform:  { url in
                    print(url)
                })
        }
        .onChange(of: scenePhase) { scene in
            switch scene {
            case .active:
                print("scenePhase: active")
            case .inactive:
                print("scenePhase: inactive")
            case .background:
                print("scenePhase: background")
            @unknown default: break
            }
        }
    }
}
