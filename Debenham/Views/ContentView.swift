//
//  ContentView.swift
//  Debenham
//
//  Created by Stephen Clark on 7/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.orange)
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    Text("The Language of Botany")
                        .fontWeight(.medium)
                        .font(.system(size: 30))
                    Text("by Clifford Neville Debenham")
                    
                    
                    Image(.coverPic)
                        .resizable()
                        .frame(width: 300, height: 400)
                        .scaledToFit()
                    
                    Spacer()
                    
                    HStack(spacing: 30) {
                        VStack(alignment: .leading, spacing: 10) {
                            NavigationLink {
                                SearchView()
                            } label: {
                                Text("Search for a term")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                            NavigationLink {
                                RandomView()
                            } label: {
                                Text("Show a random term")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                            NavigationLink {
                                AllPlatesView()
                            } label: {
                                Text("Plates from the book")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                            NavigationLink {
                                AboutView()
                            } label: {
                                Text("About this app")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                        }
                        
                        Image(.anpsaLogo)
                            .resizable()
                            .frame(width: 80, height: 98)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
