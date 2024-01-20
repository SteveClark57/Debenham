//
//  MeaningView.swift
//  Debenham
//
//  Created by Stephen Clark on 8/12/2023.
//

import SwiftUI

struct MeaningView: View {
    var definition: Definition
    
    var body: some View {
        Text(definition.term)
            .font(.title)
        
        ScrollView {
            Text(definition.meaning)
        }
    }
}
