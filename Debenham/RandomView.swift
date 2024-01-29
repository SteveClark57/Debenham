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
            .font(.title)
        ScrollView() {
            Text(debenhamModel.definitions[randomNumber].meaning)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(10)
        }
    }
}
