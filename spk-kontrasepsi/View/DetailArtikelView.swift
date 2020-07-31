//
//  DetailArtikelView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 31/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct DetailArtikelView: View {
    
    var kontrasepsi: KontrasepsiModel
    
//    Animation private toggle
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0){
                Image(kontrasepsi.image)
                .resizable()
                .scaledToFit()
                
                Group {
//                    Nama Alat
                    Text(kontrasepsi.namaAlat)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.blue)
                        .padding(.top, 10)
//                    Rating
                    RatingKbView(kontrasepsi: kontrasepsi)
                    
//                    
                    Text("Intruksi")
                        .fontWeight(.bold)
                        .modifier(TextSize())
                    
                    VStack(alignment: .leading, spacing: 5 ){
                        ForEach(kontrasepsi.artikelTeks, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }

                    Text("Penjelasan")
                    .fontWeight(.bold)
                    .modifier(TextSize())
                    
                    ForEach(kontrasepsi.intruksi, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                            .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color.blue)
                            
                            Text(item)
                            .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                }
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 :0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                        .padding(.trailing, 20)
                        .padding(.top, 24)
                }
            }
        )
//        Animation Toggle
            .onAppear(){
                self.pulsate.toggle()
        }
        
    }
}

struct DetailArtikelView_Previews: PreviewProvider {
    static var previews: some View {
        DetailArtikelView(kontrasepsi: kontrasepsiData[0])
    }
}
