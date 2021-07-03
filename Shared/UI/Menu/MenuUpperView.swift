//
//  MenuUpper.swift
//  twitter_clone_swiftui
//
//  Created by Yusuke Miyata on 2021/07/03.
//

import SwiftUI

struct MenuUpperView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Nickname")
                        .font(.headline)
                    Text("Account ID")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        print("アカウント選択ボタン")
                    }) {
                        Image(systemName: "ellipsis.circle")
                            .resizable()
                            .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            HStack {
                Button(action: {
                    print("アカウント選択ボタン")
                }) {
                    Text("0フォロー")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
                Button(action: {
                    print("アカウント選択ボタン")
                }) {
                    Text("800万フォロワー")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
            }.padding(.top, 8)
        }.padding()
    }
}

struct MenuUpper_Previews: PreviewProvider {
    static var previews: some View {
        MenuUpperView()
    }
}
