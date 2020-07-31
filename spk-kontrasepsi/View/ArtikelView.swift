//
//  ArtikelView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 29/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct ArtikelView: View {

    var kontrasepsi: [KontrasepsiModel] = kontrasepsiData
    var body: some View {
        NavigationView{
                    ScrollView{
                        ForEach(kontrasepsiData){ row in
                            VStack(spacing:10){
                                Kontrasepsi(kontrasepsi: row)
                            }
                        .padding()
                        }

                    }
                .navigationBarTitle("Artikel Kontrasepsi")

                }
            .navigationViewStyle(StackNavigationViewStyle())

            }
        }


struct Kontrasepsi : View {
    var kontrasepsi: KontrasepsiModel
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
//  Kondisi state view
    @State private var showModal: Bool = false
    var body : some View {


    //        Image data

            VStack(alignment: .leading, spacing: 0){
                Image(kontrasepsi.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
                .clipped()
                .overlay(
            HStack{
                Spacer()
                VStack{

                    Image(systemName: "heart.circle")
                        .font(Font.title.weight(.light))
                        .foregroundColor(Color.white)
                        .imageScale(.small)
                    .shadow(color: Color("Colorblackligth"),radius: 2, x: 0, y: 0)
                        .padding(.trailing)
                        .padding(.top, 22)
                    Spacer()
                        }
                    }

                )

                VStack(alignment: .leading, spacing: 12){
    //                Nama ALat
                    Text(kontrasepsi.namaAlat)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .lineLimit(1)

    //                Jenis Alat
                    Text(kontrasepsi.deskAlat)
                        .font(.system(.title, design: .serif))
                        .foregroundColor(Color.gray)
                        .italic()

                    RatingKbView(kontrasepsi: kontrasepsi)

            }
            .padding()
            .padding(.bottom,12)
        }

        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("Colorblackligth"),radius: 8, x: 0, y: 0)

//        Move View

                .onTapGesture {
                    self.hapticImpact.impactOccurred()
                    self.showModal = true
        }
            .sheet(isPresented: self.$showModal){
                DetailArtikelView(kontrasepsi: self.kontrasepsi)
        }
    }
}



