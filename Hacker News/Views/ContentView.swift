//
//  ContentView.swift
//  Hacker News
//
//  Created by Vardnan Sivarajah on 08/08/2020.
//  Copyright © 2020 Vardnan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HX40R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*let posts = [
 
 Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Hola"),
 Post(id: "3", title: "Bonjour")
 
 ]*/
