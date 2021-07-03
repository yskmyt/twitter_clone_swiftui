//
//  ContentView.swift
//  Shared
//
//  Created by Yusuke Miyata on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var drag: some Gesture {
        DragGesture().onEnded {
            if $0.translation.width < -100 {
                withAnimation {
                    self.showMenu = false
                }
            }
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                MainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width * 0.85 : 0)
                    .disabled(self.showMenu ? true : false)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width * 0.85)
                        .transition(.move(edge: .leading))
                }
            }.gesture(drag)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
