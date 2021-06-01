//
//  Landmark.swift
//  Landmarks
//
//  Created by Woraphot Chokratansombat on 1/6/2564 BE.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
