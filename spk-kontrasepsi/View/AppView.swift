//
//  AppView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 28/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem({
                    Image(systemName: "book.fill")
                    Text("Article")
                })
            KontenView()
                .tabItem({
                    Image(systemName: "dial.fill")
                    Text("Desicion")
                })
            ChatbotView()
                .tabItem({
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("ChatBot")
                })
            AboutUsView()
                .tabItem({
                    Image(systemName: "shield.fill")
                    Text("About us")
                })
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
