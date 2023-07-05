//
//  IntvitationView.swift
//  linkedinUI
//
//  Created by Sachin Sharma on 20/01/23.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "sachin sharma", position: "SDE", mutual: 12, image: "00")

struct InvitationView: View {
    var Data: NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 80, height: 80, alignment: .leading)
            
            VStack(alignment: .leading){
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "x.circle")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 35, height: 35)
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 35, height: 35)
            }.padding(.horizontal)
        }.frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

struct IntvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
    }
}
