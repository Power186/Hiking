//
//  Hike.swift
//  Hiking
//
//  Created by Scott on 7/21/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    
    static func all() ->[Hike] {
        
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Brokeback Mountain", imageURL: "broke", miles: 5.8),
            Hike(name: "Big Ole Falls", imageURL: "big", miles: 5)
        ]
    }
}
