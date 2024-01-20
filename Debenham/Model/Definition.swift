//
//  Definition.swift
//  Debenham
//
//  Created by Stephen Clark on 8/12/2023.
//

import Foundation

struct Definition: Codable, Identifiable {
    let id: Int
    let term: String
    let meaning: String
}
