//
//  QuoteView.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 14/05/2024.
//

import SwiftUI

struct QuoteView: View {
    @StateObject private var viewModel = ViewModel(controller: FetchController())
    
    @State private var showCharacterInfo = false

    let show: String;

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(show.lowerNoSpace)
                    .resizable()
                    .frame(width: geo.size.width * 2.7, height: geo.size.height * 1.2)
                    
                VStack {
                    VStack {
                        Spacer(minLength: 140)
                        
                        switch viewModel.status {
                        case .notStarted:
                            EmptyView()
                        case .fetching:
                            ProgressView()
                        case .success(let data):
                            Text("\"\(data.quote.quote)\"")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .padding()
                                .background(.black.opacity(0.5))
                                .clipShape(.rect(cornerRadius: 25))
                                .padding(.horizontal)
                            
                            ZStack(alignment: .bottom, content: {
                                AsyncImage(url: data.character.images[0]) { image in
                                    image.resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }.frame(width: geo.size.width / 1.1, height: geo.size.height / 1.8)
                                    .onTapGesture {
                                        showCharacterInfo.toggle()
                                    }
                                    .sheet(isPresented: $showCharacterInfo, content: {
                                        CharacterView(show: show, character: data.character)
                                    })
                                
                                
                                
                                Text(data.quote.character)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(.ultraThinMaterial)
                                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                
                            }).frame(width: geo.size.width / 1.1, height: geo.size.height / 1.8)
                                .clipShape(.rect(cornerRadius: 50))
                            
                            
                        case .failed(let _):
                            EmptyView()
                        }
                        
                        
                        Spacer()
                    }
                    
                    Button {
                        Task {
                            await viewModel.getData(for: show)
                        }
                    } label: {
                        Text("Get Random Quote")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("\(show.noSpaces)Button"))
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(color: Color("\(show.noSpaces)Shadow"), radius: 2)
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
    QuoteView(show: Constants.bbName)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
