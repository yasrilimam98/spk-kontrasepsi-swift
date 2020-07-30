//
//  HomeView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 28/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

//Model data



struct HomeView: View {
    
//    Panggil data model
    
    let data : [KontrasepsiModel] = [
        KontrasepsiModel(id: 1, namaalat: "Implant", fotoalat: "1", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 2, namaalat: "Implant", fotoalat: "2", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 3, namaalat: "Implant", fotoalat: "3", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 4, namaalat: "Implant", fotoalat: "2", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 5, namaalat: "Implant", fotoalat: "1", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 6, namaalat: "Implant", fotoalat: "3", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 7, namaalat: "Implant", fotoalat: "2", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 8, namaalat: "Implant", fotoalat: "2", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 7, namaalat: "Implant", fotoalat: "2", jenisalat: "Jenis Alat", kelasalat: "Hormonal"),
        KontrasepsiModel(id: 8, namaalat: "Implant", fotoalat: "3", jenisalat: "Jenis Alat", kelasalat: "Hormonal")
    ]
    
    
    var body: some View {
//      Kontrasepsi()
        
        NavigationView{
            ScrollView{
                ForEach(data){ row in
                    VStack(spacing:10){
                        Kontrasepsi(data: row)
                    }
                .padding()
                }
                 
            }
        .navigationBarTitle("Artikel Kontrasepsi")
       
        }
    .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        .previewDevice("Iphone 11")
            .environment(\.colorScheme, .dark)
    }
}

struct Kontrasepsi : View {
    
    let data : KontrasepsiModel
    
    var body : some View {
        
//        Foto
        VStack(alignment: .leading){
            
            ZStack(alignment: .topTrailing){
                Image(self.data.fotoAlat)
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
            }
            Text(self.data.namaAlat)
                      .font(.title)
                      .bold()
                      .padding(.leading)
                      .padding(.trailing)
                  
            Text(self.data.jenisAlat)
                .font(.body)
                      .bold()
                      .foregroundColor(Color.blue)
                      .padding(.leading)
                      .padding(.trailing)
            HStack{
                Image(systemName: "heart")
                Text(self.data.kelasAlat)
            }
            .padding(.leading)
            .padding(.trailing)
            
           
            Button(action : {()}){
                 NavigationLink(destination: ArtikelView()){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "book.fill")
                        Text("Baca Selengkapnya")
                            .font(.callout)
                            .padding()
                    }
                            Spacer()
                }
            }
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding()
        }
                    .background(Color("warna1"))
                    .cornerRadius(15)
    }
}
}
