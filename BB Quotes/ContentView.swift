//
//  ContentView.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 13/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView(show: Constants.bbName)
                .tabItem {
                    Label(Constants.bbName, systemImage: "tortoise")
                }
            QuoteView(show: Constants.bcsName)
                .tabItem {
                    Label(Constants.bcsName, systemImage: "briefcase")
                }
        }
        .onAppear {
            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
