//
//  ContentView.swift
//  lesson6.6
//
//  Created by Javlonbek on 01/02/22.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    var body: some View {
        VStack{
            Text("salom")
            List{
                ForEach(viewModel.posts, id: \.id) { post in
                    Text("\(post.title!)").font(.largeTitle)
                    Text("\(post.body!)").foregroundColor(.gray)
                }
            }
        }.onAppear {
            viewModel.apiPostList()
        }
    }
}
