//
//  DebenhamModel.swift
//  Debenham
//
//  Created by Stephen Clark on 17/12/2023.
//

import Foundation

struct DebenhamModel {
    var definitions: [Definition] = load("debenham.json")
    
    
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Cou;dn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't decode \(filename) as \(T.self):\n\(error)")
        }
    }
}
