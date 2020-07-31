//
//  KontenView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 28/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct KontenView: View {
    
    var header: [Header] = headerData
    var fact: [Fact] = factdata
   // var kontrasepsi: [KontrasepsiModel] = kontrasepsiData
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                       
                // Header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing:0){
                        ForEach(header) { item in
                         HeaderView(header: item)
                       
                    }
                }
            }
//Panggil DashboardView
                
                Text("SISPA-KO")
                    .fontWeight(.bold)
                    .modifier(TextSize())
                DashboardView()
                    .frame(maxWidth:640)
                
//                Fact
                
                Text("Fact Kontrasepsi")
                    .fontWeight(.bold)
                    .modifier(TextSize())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60){
                        ForEach(fact) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
//                Aticle
                
//                Text("Artikel")
//                    .fontWeight(.bold)
//                    .modifier(TextSize())
//
//                VStack(alignment: .center, spacing: 20){
//                    ForEach(kontrasepsi) { item in
//                        KBArtikelView(kontrasepsi: item)
//                    }
//                }
//
//                .frame(maxWidth: 640)
//                .padding(.horizontal)
//
                // Footer
                VStack(alignment: .center, spacing: 20){
                    Text("Tentang SISPA-KO")
                        .fontWeight(.bold)
                        .modifier(TextSize())
                        
                    Text("SISPA-KO merupakan Aplikasi Edukasi dan Pakar dalam pengambilan keputusan alat Kontrasepsi. Dalam Aplikasi ini menggunakan Algoritma C5.0 dalam pengambilan keputusan yang akurat untuk mempermudah pasangan suami istri dalam memilih alat Kontrasepsi")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 150)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                   }
               }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
           }
       }
struct TextSize: ViewModifier{
func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorBlue"))
      .padding(8)
}
}


struct KontenView_Previews: PreviewProvider {
    static var previews: some View {
        KontenView(header: headerData, fact: factdata)
    }
}
