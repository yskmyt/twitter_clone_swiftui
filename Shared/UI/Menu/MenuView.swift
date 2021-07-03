//
//  MenuView.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MenuUpperView()
                .padding(.top, 48)
            MenuListView()
            Spacer()
            HStack {
                Image(systemName: "lightbulb")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                Spacer()
                Image(systemName: "qrcode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 48, trailing: 16))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
