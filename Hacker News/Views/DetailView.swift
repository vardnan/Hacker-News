//
//  DetailView.swift
//  Hacker News
//
//  Created by Vardnan Sivarajah on 09/08/2020.
//  Copyright © 2020 Vardnan. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



