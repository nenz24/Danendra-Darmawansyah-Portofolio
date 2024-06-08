//
//  FeedViews.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI


struct FeedViews: View {
    @StateObject var viewModel = feedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 32){
                    ForEach(viewModel.posts) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image("logo")
                        .resizable()
                        .frame(width: 55, height: 32)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

struct FeedViews_Previews: PreviewProvider {
    static var previews: some View {
        FeedViews()
    }
}
