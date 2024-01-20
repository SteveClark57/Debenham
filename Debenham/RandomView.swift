//
//  RandomView.swift
//  Debenham
//
//  Created by Stephen Clark on 8/12/2023.
//

import SwiftUI

struct RandomView: View {
    var debenhamModel = DebenhamModel()
    var entriesCount = DebenhamModel().definitions.count

    var body: some View {
        let randomNumber = Int.random(in: 0..<(entriesCount-1))
        
        Text(debenhamModel.definitions[randomNumber].term)
        ScrollView() {
            Text(debenhamModel.definitions[randomNumber].meaning)
        }        
    }
}
