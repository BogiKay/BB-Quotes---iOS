//
//  QuoteView.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 14/05/2024.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("breakingbad")
                    .resizable()
                    .frame(width: geo.size.width * 2.7, height: geo.size.height * 1.2)
                    
                VStack {
                    Spacer(minLength: 140)
                    
                    Text("\"You either run from things, or you face them, MR White.\"")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                        .background(.black.opacity(0.5))
                        .clipShape(.rect(cornerRadius: 25))
                        .padding(.horizontal)
                    
                    ZStack(alignment: .bottom, content: {
                        Image("jessepinkman")
                            .resizable()
                            .scaledToFill()
                        
                        Text("Jesse Pinkman")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)

                    }).frame(width: geo.size.width / 1.1, height: geo.size.height / 1.8)
                        .clipShape(.rect(cornerRadius: 50))
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Get Random Quote")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(.breakingBadGreen)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(color: .breakingBadYellow, radius: 2)
                    }
                    
                    
                    Spacer(minLength: 180)
                }.frame(width: geo.size.width)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuoteView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
