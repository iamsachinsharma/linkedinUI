//
//  ProfileAndPostView.swift
//  linkedinUI
//
//  Created by Sachin Sharma on 20/01/23.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding()
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Event")
            }.padding(.horizontal)
            
            
            
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
