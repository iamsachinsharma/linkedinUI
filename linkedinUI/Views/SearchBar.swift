//
//  SearchBar.swift
//  linkedinUI
//
//  Created by Sachin Sharma on 20/01/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            
            //search bar
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270, height: 40)
                .overlay {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                }
            
            //messagebox
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30 )
        }.padding(.top)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
