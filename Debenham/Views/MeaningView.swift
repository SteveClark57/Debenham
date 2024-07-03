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
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(10)
        }
    }
}

#Preview {
    MeaningView(definition: Definition(id: 32060, term: "Serrate", meaning: "of a margin when sharply indented to appear like the forward-pointing teeth of a saw."))
}

