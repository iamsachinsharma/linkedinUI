//
//  HomeScreen.swift
//  linkedinUI
//
//  Created by Sachin Sharma on 20/01/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileAndPostView()
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
