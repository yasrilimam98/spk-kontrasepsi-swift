//
//  aboutView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 29/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct aboutView: View {
    var body: some View {
       
           VStack{
                  Spacer()
                    Image("kb")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:400, height: 400, alignment: .center)
                    
                    VStack{
        //                Text("SPK-Kontrasepsi")
        //                    .font(.system(size: 20, weight: .bold, design: .serif))
        //                    .foregroundColor(Color.blue)
        //                    .padding()
        //                    .frame(maxWidth:400, minHeight: -100)
                        
                        Text("""
        Sistem pengambil keputusan alat kontrasepsi ini adalah sistem yang untuk mempermudah ibu-ibu yang masih
        baru nikah untuk memilih alat kontrasepsi
        tanpa harus pergi ke puskesmas dan
        bidan terdekat!!!
        """)                .lineLimit(nil)
                            .font(.system(.headline, design: .serif))
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.center)
                            .lineSpacing(-1)
                            .frame(maxWidth:400, minHeight: 100)
                    }
                    .padding()
                    Spacer()
                }
                    
            .background(
                Image("putih")
                .resizable()
                    .aspectRatio(contentMode: .fill)
                )
                    .edgesIgnoringSafeArea(.all)
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
        .previewDevice("Iphone 11")
        .environment(\.colorScheme, .dark)
    }
}
