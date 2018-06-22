//
//  Channel.swift
//  Smack
//
//  Created by Juan Bernardo Cruz Ortiz on 6/22/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import Foundation

struct Channel : Decodable {
//    public private(set) var _id: String!
//    public private(set) var name: String!
//    public private(set) var description: String!
//    public private(set) var __v: Int?

    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
