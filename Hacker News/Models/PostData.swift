//
//  PostData.swift
//  Hacker News
//
//  Created by Vardnan Sivarajah on 08/08/2020.
//  Copyright © 2020 Vardnan. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
