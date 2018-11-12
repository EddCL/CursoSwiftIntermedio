//
//  Emoji.swift
//  DiccionarioDeEmojis
//
//  Created by Eduardo Carrillo on 11/6/18.
//  Copyright © 2018 Eduardo Carrillo. All rights reserved.
//

import Foundation

class Emoji{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
