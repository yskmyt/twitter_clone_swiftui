//
//  HomeView.swift
//  twitter_clone_swiftui (iOS)
//
//  Created by Yusuke Miyata on 2021/07/04.
//

import SwiftUI

struct HomeView: View {
    private let iconSize: CGFloat = 16

    var body: some View {
        List {
            ForEach(0..<mockTweets.count) { index in
                let tweet = mockTweets[index]
                HStack(alignment: .top) {
                    Image(systemName: tweet.profileImageSrc)
                    VStack(alignment: .leading) {
                        HStack(alignment: .center) {
                            Text(tweet.userName)
                                .font(.caption)
                                .fontWeight(.bold)
                            Text(tweet.userAccount)
                                .font(.caption2)
                            Text(tweet.dateTimeDescription())
                                .font(.caption2)
                        }
                        Text(tweet.message)
                            .font(.body)
                        HStack {
                            HStack {
                                Button {
                                    print("comment")
                                } label: {
                                    Image(systemName: "message")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: iconSize, height: iconSize, alignment: .center)
                                }
                                Text("\(tweet.replyCount)")
                                    .font(.caption2)
                            }
                            HStack {
                                Button {
                                    print("retweet")
                                } label: {
                                    Image(systemName: "arrow.2.squarepath")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: iconSize, height: iconSize, alignment: .center)
                                }
                                Text("\(tweet.retweetCount)")
                                    .font(.caption2)
                            }
                            HStack {
                                Button {
                                    print("like")
                                } label: {
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: iconSize, height: iconSize, alignment: .center)
                                }
                                Text("\(tweet.likeCount)")
                                    .font(.caption2)
                            }
                            Button {
                                print("share")
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: iconSize, height: iconSize, alignment: .center)
                            }


                        }
                    }

                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Tweet {
    let id: Int
    let profileImageSrc: String
    let userName: String
    let userAccount: String
    let createdAt: Int
    let message: String
    let replyCount: Int
    let retweetCount: Int
    let likeCount: Int
    let extraFileUrl: String

    func dateTimeDescription() -> String {
        let timestamp = TimeInterval(createdAt)
        let date = NSDate(timeIntervalSince1970: timestamp)
        return date.description
    }
}

private let mockTweets = [
    Tweet(id: 0,
          profileImageSrc: "person",
          userName: "test0",
          userAccount: "@test0",
          createdAt: 1625403845,
          message: "askdsalkjdwjvoiuwrehoasjdfl;askcpqwkfopqjfa;sjd;askjd;laskdfjolwehfoqweihcvlkasjdklasjdolqkhjflkasjdljldajsdlmvpwejhagl;w",
          replyCount: 100,
          retweetCount: 100,
          likeCount: 100,
          extraFileUrl: ""),
    Tweet(id: 1,
          profileImageSrc: "person",
          userName: "test1",
          userAccount: "@test1",
          createdAt: 1625403845,
          message: "askdsalkjdwjvoiuwrehoasjdfl;askcpqwkfopqjfa;sjd;askjd;laskdfjolwehfoqweihcvlkasjdklasjdolqkhjflkasjdljldajsdlmvpwejhagl;w",
          replyCount: 200,
          retweetCount: 200,
          likeCount: 200,
          extraFileUrl: ""),
    Tweet(id: 2,
          profileImageSrc: "person",
          userName: "test2",
          userAccount: "@test2",
          createdAt: 1625403845,
          message: "askdsalkjdwjvoiuwrehoasjdfl;askcpqwkfopqjfa;sjd;askjd;laskdfjolwehfoqweihcvlkasjdklasjdolqkhjflkasjdljldajsdlmvpwejhagl;w",
          replyCount: 300,
          retweetCount: 300,
          likeCount: 300,
          extraFileUrl: ""),
]
