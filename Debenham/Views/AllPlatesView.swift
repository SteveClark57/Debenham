//
//  PlatesView.swift
//  Debenham
//
//  Created by Stephen Clark on 21/12/2023.
//

import SwiftUI

struct AllPlatesView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(plates, id: \.id) { plate in
                    SinglePlateView(image: plate.plateName, text: plate.plateText)
                }
            }
        }
    }
}

#Preview {
    AllPlatesView()
}
