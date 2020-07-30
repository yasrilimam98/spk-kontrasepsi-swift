//
//  KontenView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 28/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct KontenView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                       
                // Header
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing:0){
                         HeaderView()
                    }
                }
               
                // Footer
                VStack(alignment: .center, spacing: 20){
                    Text("Tentang Kontrasepsi")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBlue"))
                        .padding(8)
                    Text("Jenis dari alat kontrasepi dibagi berbagai macam seperti gambar di slide header ini")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
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

struct KontenView_Previews: PreviewProvider {
    static var previews: some View {
        KontenView()
    }
}
