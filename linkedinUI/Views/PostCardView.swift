//
//  PostCardView.swift
//  linkedinUI
//
//  Created by Sachin Sharma on 20/01/23.
//

import SwiftUI

struct SocialView {
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostData(id: 1 , Image: "01", title: "Sachin Sharma", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8")
                        .font(.caption )
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for a new cource on ios on swift UI, you are already at great place")
            Divider()
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
