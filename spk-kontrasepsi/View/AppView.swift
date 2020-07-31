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
            KontenView()
                .tabItem({
                    Image(systemName: "square.grid.2x2")
                    Text("Dashboard")
                })
                ArtikelView()
                .tabItem({
                    Image(systemName: "book")
                    Text("Article")
                })
            PakarView()
                .tabItem({
                    Image(systemName: "dial")
                    Text("Desicion")
                })
            AboutUsView()
                .tabItem({
                    Image(systemName: "shield")
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
