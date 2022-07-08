//
//  NewsFeed.swift
//  JSON_Parsing
//
//  Created by Cumulations Technologies Private Limited on 08/07/22.
//

import Foundation

struct NewsFeed : Codable{
    
    var status :String = ""
    var totalResults : Int = 0
    var articles : [Articles]?
    
}

struct Articles : Codable {
    
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}
