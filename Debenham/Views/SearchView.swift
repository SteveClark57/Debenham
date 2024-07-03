//
//  SearchView.swift
//  Debenham
//
//  Created by Stephen Clark on 8/12/2023.
//

import SwiftUI

struct SearchView: View {
    var debenhamModel = DebenhamModel()
    @State private var searchText = ""
    @State var filteredDefinitions = DebenhamModel().definitions
    let alphabet = ["-", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    
    var body: some View {
        VStack {
            List {
                ForEach(filteredDefinitions) { term in
                    NavigationLink(destination: MeaningView(definition: term)) {
                        HStack {
                            Text(term.term)
                                .padding(.horizontal)
                            
                            Spacer()
                        }
                        
                    }
                    .navigationBarTitle("Terms \(debenhamModel.definitions.count)")
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),prompt: "Search for a term")
            .keyboardType(.asciiCapable) // removes ability to enter emoji
            .autocorrectionDisabled()  // disables autocorrection
            .textInputAutocapitalization(.never) // forces lowercase
            .onAppear(perform: filterTerms)
            .onChange(of: searchText) { 
                filterTerms()
            }
            .onSubmit(of: .search) {
                filterTerms()
            }
        }
    }
    
    func filterTerms() {
        if searchText.isEmpty {
            filteredDefinitions = debenhamModel.definitions
        } else {
            filteredDefinitions = debenhamModel.definitions.filter {
                $0.term
                    .localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

#Preview {
    SearchView()
}
