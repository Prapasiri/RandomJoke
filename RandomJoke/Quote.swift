//
//  Quote.swift
//  RandomJoke
//
//  Created by Prapasiri Lertkriangkraiying on 9/8/2562 BE.
//  Copyright © 2562 Prapasiri Lertkriangkraiying. All rights reserved.
//

import Foundation

struct Href: Codable {
    let href: String
}

struct LinkSelf: Codable {
    let linkSelf: Href
    
    private enum CodingKeys: String, CodingKey {
        case linkSelf = "self"
    }
}

struct AuthorObj: Codable {
    let createdAt: String
    let authorId: String
    let name: String
    let slug: String
    let updatedAt: String
    
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case authorId = "author_id"
        case name
        case slug
        case updatedAt = "updated_at"
    }
}

struct SourceObj: Codable {
    let createdAt: String
    let quoteSourceId: String
    let updatedAt: String
    let url: String
    
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case quoteSourceId = "quote_source_id"
        case updatedAt = "updated_at"
        case url
    }
}

struct Author: Codable {
    let autor: [AuthorObj]
    let source: [SourceObj]
}

struct Quote: Codable {
    // odable = Encodable + Decodable
    let appearedAt: String
    let createdAt: String
    let quoteId: String
    let tags: [String]
    let updatedAt: String
    let value: String
    var links: LinkSelf
    var embedded: Author
    
    private enum CodingKeys: String, CodingKey {
        case appearedAt = "appeared_at"
        case createdAt = "created_at"
        case quoteId = "quote_id"
        case tags
        case updatedAt = "updated_at"
        case value
        case links = "_links"
        case embedded = "_embedded"
    }
}
