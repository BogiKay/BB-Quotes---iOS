//
//  CharacterView.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 15/05/2024.
//

import SwiftUI

struct CharacterView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .top) {
                Image("breakingbad")
                    .resizable()
                    .scaledToFit()
                
                ScrollView {
                    // charater image
                    VStack {
                        Image("jessepinkman")
                            .resizable()
                            .scaledToFill()
                    }
                    .frame(width: geo.size.width / 1.2, height: geo.size.height / 1.7)
                    .cornerRadius(25)
                    .padding(.top, 60)
                    
                    // character info
                    VStack(alignment: .leading) {
                        Group {
                            Text("Jesse Pinkman")
                                .font(.largeTitle)
                            Text("Portrayed By: Aaron Paul")
                                .font(.subheadline)
                            Divider()
                            
                            Text("Jesse Pinkman Character Info")
                                .font(.title2)
                            
                            Text("Born: 09-24-1984")
                            Divider()
                        }
                        
                        Group {
                            Text("Occupations:")
                            ForEach(0..<3) { i in
                                    Text("• Occuputation \(i)")
                                    .font(.subheadline)
                            }
                            Divider()
                            Text("Nicknames:")
                            ForEach(0..<3) { i in
                                    Text("• Nickname \(i)")
                                    .font(.subheadline)
                            }
                        }
                        
                    }
                    .padding([.leading, .bottom], 40)
                    
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CharacterView()
}
